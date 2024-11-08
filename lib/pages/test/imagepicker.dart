import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart';
import 'package:quliao/models/user/myinfo.dart';
import 'package:quliao/pages/windows/client/window_client.dart';
import 'package:quliao/pages/windows/client/window_image_upload.dart';
import 'package:quliao/pub/config.dart';
import 'package:quliao/pub/func.dart';
import 'package:quliao/pub/log.dart';

class HeadImageUploadPage extends StatefulWidget {
  @override
  _HeadImageUploadPageState createState() => _HeadImageUploadPageState();
}

class _HeadImageUploadPageState extends State<HeadImageUploadPage> {
  late File _image;
  // final imagePicker = ImagePicker();

  Future getImage() async {
    log("get image");
    String imagePath = "";
    if (WindowClient.instance.isPC()) {
      final pickerFile = await chooseLocalImage();
      if (pickerFile == null) {
        log("get image but not find");
        return;
      }
      imagePath = pickerFile.path;
    } else {
      final pickerFile = await ImagePicker().getImage(
          source: ImageSource
              .gallery); //ImagePicker.pickImage(source: ImageSource.gallery);
      if (pickerFile == null) {
        log("get image but not find");
        return;
      }
      imagePath = pickerFile.path;
    }
    if (imagePath.isNotEmpty) {
      _upLoadImage(File(imagePath));
      log("get image of path $imagePath");
      setState(() {
        _image = File(imagePath);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker Example'),
      ),
      body: Center(
        child: _image == null ? Text('No image selected.') : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  _upLoadImage(File image) async {
    String path = image.path;
    var name = path.substring(path.lastIndexOf("/") + 1, path.length);
    // var suffix = name.substring(name.lastIndexOf(".") + 1, name.length);
    FormData formData = FormData.fromMap({
      "image": await MultipartFile.fromFile(path,
          filename: name), //Upload(new File(path), name,
      // contentType: ContentType.parse("image/$suffix"))
    });

    var dio = Dio();
    // dio.options.baseUrl = ConfigMgr().config!.urlUploadImage;
    dio.options.baseUrl = ConfigMgr().config!.urlUploadFile;
    // (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    // (HttpClient client) {
    // client.findProxy = (uri) {
    // //proxy all request to localhost:8888
    // return "PROXY localhost:8888";
    // };
    // client.badCertificateCallback =
    // (X509Certificate cert, String host, int port) => true;
    // };
    // dio.interceptors.add(LogInterceptor());

    // 多文件传输
    // FormData.fromMap({
    //   "files": [
    //     MultipartFile.fromFileSync("./example/upload.txt",
    //         filename: "upload.txt"),
    //     MultipartFile.fromFileSync("./example/upload.txt",
    //         filename: "upload.txt"),
    //   ]
    // });

    // Dio dio = new Dio();
    // var respone = await dio.post<String>(Config.urlUploadImage, data: formData, options: Options(headers:{}));
    // if (respone.statusCode == 200) {
    //   Fluttertoast.showToast(
    //       msg: "图片上传成功",
    //       gravity: ToastGravity.CENTER,
    //       textColor: Colors.grey);
    // }

    // Response response = await dio.post(ConfigMgr().config!.urlUploadImage,
    Response response = await dio.post(ConfigMgr().config!.urlUploadFile,
        data: formData,
        options: Options(headers: {
          "ObjectDir": "im-msg",
          "Authorization": AppUserInfo().appToken,
          "UserID": AppUserInfo().imId,
          "Bucket": "commim",
        }), onSendProgress: (received, total) {
      if (total != -1) {
        print((received / total * 100).toStringAsFixed(0) + "%");
      }
    }, onReceiveProgress: (count, total) {
      print((count / total * 100).toStringAsFixed(0) + "%");
    });

    log("请求结果:${response} image path:${response.data['image_url']}");
    if (response.statusCode == 200) {
      showToast("图片上传成功");
      if (response.data["result"] != 0) {
        showToast("上传失败:result=${response.data["result"]}");
      }
    }
  }
}

// import 'dart:io';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';
//
// class ImagePickerPage extends StatefulWidget {
//   ImagePickerPage({Key key, this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _ImagePickerPageState createState() => _ImagePickerPageState();
// }
//
// class _ImagePickerPageState extends State<ImagePickerPage> {
//   PickedFile _imageFile;
//   dynamic _pickImageError;
//   bool isVideo = false;
//   VideoPlayerController _controller;
//   VideoPlayerController _toBeDisposed;
//   String _retrieveDataError;
//
//   final ImagePicker _picker = ImagePicker();
//   final TextEditingController maxWidthController = TextEditingController();
//   final TextEditingController maxHeightController = TextEditingController();
//   final TextEditingController qualityController = TextEditingController();
//
//   Future<void> _playVideo(PickedFile file) async {
//     if (file != null && mounted) {
//       await _disposeVideoController();
//       // if (kIsWeb) {
//       //   _controller = VideoPlayerController.network(file.path);
//       //   // In web, most browsers won't honor a programmatic call to .play
//       //   // if the video has a sound track (and is not muted).
//       //   // Mute the video so it auto-plays in web!
//       //   // This is not needed if the call to .play is the result of user
//       //   // interaction (clicking on a "play" button, for example).
//       //   await _controller.setVolume(0.0);
//       // } else {
//         _controller = VideoPlayerController.file(File(file.path));
//         await _controller.setVolume(1.0);
//       // }
//       await _controller.initialize();
//       await _controller.setLooping(true);
//       await _controller.play();
//       setState(() {});
//     }
//   }
//
//   void _onImageButtonPressed(ImageSource source, {BuildContext context}) async {
//     if (_controller != null) {
//       await _controller.setVolume(0.0);
//     }
//     if (isVideo) {
//       final PickedFile file = await _picker.getVideo(
//           source: source, maxDuration: const Duration(seconds: 10));
//       await _playVideo(file);
//     } else {
//       await _displayPickImageDialog(context,
//               (double maxWidth, double maxHeight, int quality) async {
//             try {
//               final pickedFile = await _picker.getImage(
//                 source: source,
//                 maxWidth: maxWidth,
//                 maxHeight: maxHeight,
//                 imageQuality: quality,
//               );
//               setState(() {
//                 _imageFile = pickedFile;
//               });
//             } catch (e) {
//               setState(() {
//                 _pickImageError = e;
//               });
//             }
//           });
//     }
//   }
//
//   @override
//   void deactivate() {
//     if (_controller != null) {
//       _controller.setVolume(0.0);
//       _controller.pause();
//     }
//     super.deactivate();
//   }
//
//   @override
//   void dispose() {
//     _disposeVideoController();
//     maxWidthController.dispose();
//     maxHeightController.dispose();
//     qualityController.dispose();
//     super.dispose();
//   }
//
//   Future<void> _disposeVideoController() async {
//     if (_toBeDisposed != null) {
//       await _toBeDisposed.dispose();
//     }
//     _toBeDisposed = _controller;
//     _controller = null;
//   }
//
//   Widget _previewVideo() {
//     final Text retrieveError = _getRetrieveErrorWidget();
//     if (retrieveError != null) {
//       return retrieveError;
//     }
//     if (_controller == null) {
//       return const Text(
//         'You have not yet picked a video',
//         textAlign: TextAlign.center,
//       );
//     }
//     return Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: AspectRatioVideo(_controller),
//     );
//   }
//
//   Widget _previewImage() {
//     final Text retrieveError = _getRetrieveErrorWidget();
//     if (retrieveError != null) {
//       return retrieveError;
//     }
//     if (_imageFile != null) {
//       // if (kIsWeb) {
//       //   // Why network?
//       //   // See https://pub.flutter-io.cn/packages/image_picker#getting-ready-for-the-web-platform
//       //   return Image.network(_imageFile.path);
//       // } else {
//         return Image.file(File(_imageFile.path));
//       // }
//     } else if (_pickImageError != null) {
//       return Text(
//         'Pick image error: $_pickImageError',
//         textAlign: TextAlign.center,
//       );
//     } else {
//       return const Text(
//         'You have not yet picked an image.',
//         textAlign: TextAlign.center,
//       );
//     }
//   }
//
//   Future<void> retrieveLostData() async {
//     final LostData response = await _picker.getLostData();
//     if (response.isEmpty) {
//       return;
//     }
//     if (response.file != null) {
//       if (response.type == RetrieveType.video) {
//         isVideo = true;
//         await _playVideo(response.file);
//       } else {
//         isVideo = false;
//         setState(() {
//           _imageFile = response.file;
//         });
//       }
//     } else {
//       _retrieveDataError = response.exception.code;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
//         child: defaultTargetPlatform == TargetPlatform.android
//             ? FutureBuilder<void>(
//           future: retrieveLostData(),
//           builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
//             switch (snapshot.connectionState) {
//               case ConnectionState.none:
//               case ConnectionState.waiting:
//                 return const Text(
//                   'You have not yet picked an image.',
//                   textAlign: TextAlign.center,
//                 );
//               case ConnectionState.done:
//                 return isVideo ? _previewVideo() : _previewImage();
//               default:
//                 if (snapshot.hasError) {
//                   return Text(
//                     'Pick image/video error: ${snapshot.error}}',
//                     textAlign: TextAlign.center,
//                   );
//                 } else {
//                   return const Text(
//                     'You have not yet picked an image.',
//                     textAlign: TextAlign.center,
//                   );
//                 }
//             }
//           },
//         )
//             : (isVideo ? _previewVideo() : _previewImage()),
//       ),
//       floatingActionButton: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: <Widget>[
//           FloatingActionButton(
//             onPressed: () {
//               isVideo = false;
//               _onImageButtonPressed(ImageSource.gallery, context: context);
//             },
//             heroTag: 'image0',
//             tooltip: 'Pick Image from gallery',
//             child: const Icon(Icons.photo_library),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 16.0),
//             child: FloatingActionButton(
//               onPressed: () {
//                 isVideo = false;
//                 _onImageButtonPressed(ImageSource.camera, context: context);
//               },
//               heroTag: 'image1',
//               tooltip: 'Take a Photo',
//               child: const Icon(Icons.camera_alt),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 16.0),
//             child: FloatingActionButton(
//               backgroundColor: Colors.red,
//               onPressed: () {
//                 isVideo = true;
//                 _onImageButtonPressed(ImageSource.gallery);
//               },
//               heroTag: 'video0',
//               tooltip: 'Pick Video from gallery',
//               child: const Icon(Icons.video_library),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 16.0),
//             child: FloatingActionButton(
//               backgroundColor: Colors.red,
//               onPressed: () {
//                 isVideo = true;
//                 _onImageButtonPressed(ImageSource.camera);
//               },
//               heroTag: 'video1',
//               tooltip: 'Take a Video',
//               child: const Icon(Icons.videocam),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Text _getRetrieveErrorWidget() {
//     if (_retrieveDataError != null) {
//       final Text result = Text(_retrieveDataError);
//       _retrieveDataError = null;
//       return result;
//     }
//     return null;
//   }
//
//   Future<void> _displayPickImageDialog(
//       BuildContext context, OnPickImageCallback onPick) async {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text('Add optional parameters'),
//             content: Column(
//               children: <Widget>[
//                 TextField(
//                   controller: maxWidthController,
//                   keyboardType: TextInputType.numberWithOptions(decimal: true),
//                   decoration:
//                   InputDecoration(hintText: "Enter maxWidth if desired"),
//                 ),
//                 TextField(
//                   controller: maxHeightController,
//                   keyboardType: TextInputType.numberWithOptions(decimal: true),
//                   decoration:
//                   InputDecoration(hintText: "Enter maxHeight if desired"),
//                 ),
//                 TextField(
//                   controller: qualityController,
//                   keyboardType: TextInputType.number,
//                   decoration:
//                   InputDecoration(hintText: "Enter quality if desired"),
//                 ),
//               ],
//             ),
//             actions: <Widget>[
//               TextButton(
//                 child: const Text('CANCEL'),
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//               ),
//               TextButton(
//                   child: const Text('PICK'),
//                   onPressed: () {
//                     double width = maxWidthController.text.isNotEmpty
//                         ? double.parse(maxWidthController.text)
//                         : null;
//                     double height = maxHeightController.text.isNotEmpty
//                         ? double.parse(maxHeightController.text)
//                         : null;
//                     int quality = qualityController.text.isNotEmpty
//                         ? int.parse(qualityController.text)
//                         : null;
//                     onPick(width, height, quality);
//                     Navigator.of(context).pop();
//                   }),
//             ],
//           );
//         });
//   }
// }
//
// typedef void OnPickImageCallback(
//     double maxWidth, double maxHeight, int quality);
//
// class AspectRatioVideo extends StatefulWidget {
//   AspectRatioVideo(this.controller);
//
//   final VideoPlayerController controller;
//
//   @override
//   AspectRatioVideoState createState() => AspectRatioVideoState();
// }
//
// class AspectRatioVideoState extends State<AspectRatioVideo> {
//   VideoPlayerController get controller => widget.controller;
//   bool initialized = false;
//
//   void _onVideoControllerUpdate() {
//     if (!mounted) {
//       return;
//     }
//     if (initialized != controller.value.initialized) {
//       initialized = controller.value.initialized;
//       setState(() {});
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     controller.addListener(_onVideoControllerUpdate);
//   }
//
//   @override
//   void dispose() {
//     controller.removeListener(_onVideoControllerUpdate);
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (initialized) {
//       return Center(
//         child: AspectRatio(
//           aspectRatio: controller.value?.aspectRatio,
//           child: VideoPlayer(controller),
//         ),
//       );
//     } else {
//       return Container();
//     }
//   }
// }