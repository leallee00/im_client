#include "flutter_window.h"

#include <optional>

#include "flutter/generated_plugin_registrant.h"

FlutterWindow::FlutterWindow(const flutter::DartProject& project)
    : project_(project) {}

FlutterWindow::~FlutterWindow() {}

bool FlutterWindow::OnCreate() {
  if (!Win32Window::OnCreate()) {
    return false;
  }

  RECT frame = GetClientArea();

  // The size here must match the window dimensions to avoid unnecessary surface
  // creation / destruction in the startup path.
  flutter_controller_ = std::make_unique<flutter::FlutterViewController>(
      frame.right - frame.left, frame.bottom - frame.top, project_);
  // Ensure that basic setup of the controller was successful.
  if (!flutter_controller_->engine() || !flutter_controller_->view()) {
    return false;
  }
  RegisterPlugins(flutter_controller_->engine());
  SetChildContent(flutter_controller_->view()->GetNativeWindow());

  flutter_controller_->engine()->SetNextFrameCallback([&]() {
    this->Show();
  });

	// Flutter can complete the first frame before the "show window" callback is
	// registered. The following call ensures a frame is pending to ensure the
	// window is shown. It is a no-op if the first frame hasn't completed yet.
	//flutter_controller_->ForceRedraw();


	//RegisterPlugins(flutter_controller_->engine());

	flutter::MethodChannel<> channel(

		flutter_controller_->engine()->messenger(), "native_method_channel",

		&flutter::StandardMethodCodec::GetInstance());

	channel.SetMethodCallHandler(
		[](const flutter::MethodCall<>& call,
			std::unique_ptr<flutter::MethodResult<>> result) {
				if (call.method_name() == "screenshot") {
                  const auto* flu_value = std::get_if<std::string>(call.arguments());
                  std::cout << typeid(flu_value).name() << "  cstr->" << flu_value->c_str() << std::endl;

                  int len;
                  int slength = (int)flu_value->size()+1;// (int)flu_value->size().length() + 1;
                  len = MultiByteToWideChar(CP_ACP, 0, flu_value->c_str(), slength, 0, 0);
                  wchar_t* fileName = new wchar_t[len];
                  MultiByteToWideChar(CP_ACP, 0, flu_value->c_str(), slength, fileName, len);
                  std::cout << "  wchar->" << fileName << std::endl;
                  //FlutterWindow::ShootScreen(L"D:\\ttt.bmp", NULL);
                  FlutterWindow::ShootScreen(fileName, NULL);
                  result->Success(std::string("success"));
                }
                else {
                  result->NotImplemented();
                }
		});

	//SetChildContent(flutter_controller_->view()->GetNativeWindow());

	return true;
}

void FlutterWindow::OnDestroy() {
  if (flutter_controller_) {
    flutter_controller_ = nullptr;
  }

  Win32Window::OnDestroy();
}

LRESULT
FlutterWindow::MessageHandler(HWND hwnd, UINT const message,
                              WPARAM const wparam,
                              LPARAM const lparam) noexcept {
  // Give Flutter, including plugins, an opportunity to handle window messages.
  if (flutter_controller_) {
    std::optional<LRESULT> result =
        flutter_controller_->HandleTopLevelWindowProc(hwnd, message, wparam,
                                                      lparam);
    if (result) {
      return *result;
    }
  }

  switch (message) {
    case WM_FONTCHANGE:
      flutter_controller_->engine()->ReloadSystemFonts();
      break;
  }

  return Win32Window::MessageHandler(hwnd, message, wparam, lparam);
}


void FlutterWindow::ShootScreen(WCHAR* filename, HWND hWnd)
{
	HDC hdc = CreateDC(L"DISPLAY", NULL, NULL, NULL);
	int32_t ScrWidth = 0, ScrHeight = 0;
	RECT rect = { 0 };
	if (hWnd == NULL)
	{
		ScrWidth = GetDeviceCaps(hdc, HORZRES);
		ScrHeight = GetDeviceCaps(hdc, VERTRES);
	}
	else
	{
		GetWindowRect(hWnd, &rect);
		ScrWidth = rect.right - rect.left;
		ScrHeight = rect.bottom - rect.top;
	}
	HDC hmdc = CreateCompatibleDC(hdc);

	HBITMAP hBmpScreen = CreateCompatibleBitmap(hdc, ScrWidth, ScrHeight);
	HBITMAP holdbmp = (HBITMAP)SelectObject(hmdc, hBmpScreen);

	BITMAP bm;
	GetObject(hBmpScreen, sizeof(bm), &bm);

	BITMAPINFOHEADER bi = { 0 };
	bi.biSize = sizeof(BITMAPINFOHEADER);
	bi.biWidth = bm.bmWidth;
	bi.biHeight = bm.bmHeight;
	bi.biPlanes = bm.bmPlanes;
	bi.biBitCount = bm.bmBitsPixel;
	bi.biCompression = BI_RGB;
	bi.biSizeImage = bm.bmHeight * bm.bmWidthBytes;
	// data of bitmap
	char* buf = new char[bi.biSizeImage];
	BitBlt(hmdc, 0, 0, ScrWidth, ScrHeight, hdc, rect.left, rect.top, SRCCOPY);
	GetDIBits(hmdc, hBmpScreen, 0L, (DWORD)ScrHeight, buf, (LPBITMAPINFO)&bi, (DWORD)DIB_RGB_COLORS);

	BITMAPFILEHEADER bfh = { 0 };
	bfh.bfType = ((WORD)('M' << 8) | 'B');
	bfh.bfSize = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER) + bi.biSizeImage;
	bfh.bfOffBits = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER);
	HANDLE hFile = CreateFile(filename, GENERIC_WRITE, 0, 0, OPEN_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
	if (hFile == INVALID_HANDLE_VALUE) {
		DWORD lastError = GetLastError();
		wprintf_s(L"last error code: 0x%X", lastError);
	}
	DWORD dwWrite;
	WriteFile(hFile, &bfh, sizeof(BITMAPFILEHEADER), &dwWrite, NULL);
	WriteFile(hFile, &bi, sizeof(BITMAPINFOHEADER), &dwWrite, NULL);
	WriteFile(hFile, buf, bi.biSizeImage, &dwWrite, NULL);
	CloseHandle(hFile);
	hBmpScreen = (HBITMAP)SelectObject(hmdc, holdbmp);
}
