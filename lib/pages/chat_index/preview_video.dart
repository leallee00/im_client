import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/flutter_chat_ui/src/models/preview_video.dart';
import 'package:quliao/global/global_repository.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;
import 'package:quliao/utils/permission.dart';
import 'package:quliao/widgets/loading.dart';
import 'package:quliao/widgets/toast.dart';
import 'package:video_player/video_player.dart';

class PreviewVideoWidget extends StatefulWidget {
  const PreviewVideoWidget({
    super.key,
    this.initialPage = 0,
    required this.videos,
  });

  final int initialPage;

  /// Images to show in the gallery.
  final List<PreviewVideo> videos;

  @override
  State<StatefulWidget> createState() => _PreviewVideoState();
}

class _PreviewVideoState extends State<PreviewVideoWidget> {
  late int _currentPage;
  $locUinfo.UserInfo? _userInfo;

  ChewieController? _chewieController;
  late VideoPlayerController _videoPlayerController;

  String videoUrl = '';

  final GlobalRepository repository = GlobalRepository();

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage;
    videoUrl = widget.videos[_currentPage].uri;
    getUserInfo();
    initializePlayer();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(videoUrl));
    await Future.wait([
      _videoPlayerController.initialize(),
    ]);
    _createChewieController();
    setState(() {});
  }

  Future<void> _createChewieController() async {
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
    );
  }

  Future<void> getUserInfo() async {
    _userInfo = await $locUinfo.GetUserInfo(
      int.parse(widget.videos[_currentPage].author.id),
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
          actions: [
            TextButton(
              child: const Text('保存'),
              onPressed: () async {
                final result = await PermissionUtil().requestPhotoPermission();
                if (result) {
                  CustomToast.loading();
                  await repository.downloadNetworkVideo(videoUrl);
                  showToast('保存成功');
                  CustomToast.dismiss();
                }
              },
            ),
          ],
        ),
        body: Container(
          color: Colors.black,
          child: Center(
            child: _chewieController != null &&
                    _chewieController!.videoPlayerController.value.isInitialized
                ? Chewie(controller: _chewieController!)
                : CustomLoadingIndicator(
                    size: Dimens.gap_dp46,
                    strokeWidth: Dimens.gap_dp4,
                  ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }
}
