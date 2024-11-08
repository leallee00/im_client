import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/loading.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({
    super.key,
    this.title,
    this.url,
  });

  final String? title;
  final String? url;

  @override
  State<StatefulWidget> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  InAppWebViewController? webViewController;

  String? title;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      setState(() {
        title = widget.title;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(title ?? ''),
          leading: IconButton(
            splashRadius: 20.r,
            onPressed: () async {
              if (null != webViewController) {
                final canGoBack = await webViewController!.canGoBack();
                if (canGoBack) {
                  webViewController!.goBack();
                } else {
                  Get.back();
                }
              } else {
                Get.back();
              }
            },
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
          actions: [
            Center(
              child: Padding(
                padding: EdgeInsets.zero,
                child: IconButton(
                  splashRadius: 20.r,
                  onPressed: () => webViewController?.reload(),
                  icon: const Icon(
                    Icons.refresh,
                  ),
                ),
              ),
            )
          ],
        ),
        body: null == widget.url
            ? Center(
                child: CustomLoadingIndicator(
                  size: Dimens.gap_dp46,
                  strokeWidth: Dimens.gap_dp4,
                ),
              )
            : InAppWebView(
                onWebViewCreated: (webViewController) {
                  if (mounted) {
                    this.webViewController = webViewController;
                  }
                },
                initialOptions: InAppWebViewGroupOptions(
                  crossPlatform: InAppWebViewOptions(
                    useShouldOverrideUrlLoading: true,
                    useOnDownloadStart: true,
                  ),
                ),
                initialUrlRequest: URLRequest(
                  url: Uri.parse(widget.url!),
                ),
                onTitleChanged: (c, title) {
                  if (mounted) {
                    setState(() {
                      this.title = title;
                    });
                  }
                },
              ),
      ),
      onWillPop: () async {
        if (null != webViewController) {
          final canGoBack = await webViewController!.canGoBack();
          if (canGoBack) {
            webViewController!.goBack();
          } else {
            Get.back();
          }
        } else {
          Get.back();
        }
        return false;
      },
    );
  }
}
