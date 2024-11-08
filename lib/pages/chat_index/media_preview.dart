import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/flutter_chat_ui/src/conditional/conditional.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_image.dart';
import 'package:quliao/flutter_chat_ui/src/widgets/image_gallery.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:quliao/pub/func.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/utils/permission.dart';
import 'package:quliao/widgets/dialog/manager.dart';
import 'package:quliao/widgets/rh_extended_image.dart';
import 'package:quliao/widgets/toast.dart';

class MediaPreviewView extends StatefulWidget {
  const MediaPreviewView({
    super.key,
    this.initialPage = 0,
    this.imageHeaders,
    required this.images,
    this.options = const ImageGalleryOptions(),
  });

  final int initialPage;

  /// See [Chat.imageHeaders].
  final Map<String, String>? imageHeaders;

  /// Images to show in the gallery.
  final List<PreviewImage> images;

  /// Customisation options for the gallery.
  final ImageGalleryOptions options;

  @override
  State<StatefulWidget> createState() => _MediaPreviewViewState();
}

class _MediaPreviewViewState extends State<MediaPreviewView> {
  late PageController _pageController;
  late int _currentPage;
  $locUinfo.UserInfo? _userInfo;

  final GlobalRepository repository = GlobalRepository();

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage;
    _pageController = PageController(initialPage: _currentPage);
    getUserInfo();
  }

  Future<void> getUserInfo() async {
    _userInfo = await $locUinfo.GetUserInfo(
      int.parse(widget.images[_currentPage].author.id),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            _userInfo?.nickName ?? '${_userInfo?.imId}',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Theme.of(context).colorScheme.surface),
          ),
          centerTitle: false,
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          onLongPress: (Platform.isAndroid || Platform.isIOS)
              ? () {
                  final previewImage = widget.images[_currentPage];
                  DialogManager.showSaveImageTipDialog(
                    context,
                    onConfirm: () async {
                      final result =
                          await PermissionUtil().requestPhotoPermission();
                      if (result) {
                        CustomToast.loading();
                        await repository.downloadNetworkImage(previewImage.uri);
                        showToast('保存成功');
                        CustomToast.dismiss();
                      }
                    },
                  );
                }
              : null,
          child: Stack(
            children: [
              Container(
                color: Colors.black,
                child: PhotoViewGallery.builder(
                  builder: (BuildContext context, int index) {
                    final imageUri = widget.images[index].uri;
                    return PhotoViewGalleryPageOptions(
                      imageProvider: imageUri.startsWith('https')
                          ? DecryptNetworkImageProvider(
                              widget.images[index].uri,
                            )
                          : Conditional().getProvider(
                              widget.images[index].uri,
                              headers: widget.imageHeaders,
                            ),
                      minScale: widget.options.minScale,
                      maxScale: widget.options.maxScale,
                    );
                  },
                  itemCount: widget.images.length,
                  loadingBuilder: (context, event) =>
                      _imageGalleryLoadingBuilder(event),
                  pageController: _pageController,
                  scrollPhysics: const ClampingScrollPhysics(),
                  onPageChanged: (int position) async {
                    $locUinfo.UserInfo userInfo = await $locUinfo.GetUserInfo(
                        int.parse(widget.images[position].author.id));
                    setState(() {
                      _currentPage = position;
                      _userInfo = userInfo;
                    });
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFBBBBBB),
                    borderRadius: BorderRadius.circular(Dimens.gap_dp16),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.gap_dp10,
                    vertical: Dimens.gap_dp4,
                  ),
                  margin: EdgeInsets.only(bottom: Dimens.gap_dp20),
                  child: Text(
                    '${_currentPage + 1}/${widget.images.length}',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
              if (Platform.isWindows || Platform.isLinux || Platform.isMacOS)
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (_currentPage > 0) {
                            _pageController.jumpToPage(_currentPage - 1);
                          }
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_left,
                          size: Dimens.gap_dp40,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          LoggerManager()
                              .debug('_currentPage right ===> $_currentPage');
                          if (_currentPage < widget.images.length - 1) {
                            _pageController.jumpToPage(_currentPage + 1);
                          }
                        },
                        icon: Icon(
                          Icons.keyboard_arrow_right,
                          size: Dimens.gap_dp40,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                    ],
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Widget _imageGalleryLoadingBuilder(ImageChunkEvent? event) => Center(
        child: SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            value: event == null || event.expectedTotalBytes == null
                ? 0
                : event.cumulativeBytesLoaded / event.expectedTotalBytes!,
          ),
        ),
      );
}
