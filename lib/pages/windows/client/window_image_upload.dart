import 'package:file_selector/file_selector.dart';

Future<XFile?> chooseLocalImage() async {
  const XTypeGroup pictureTtypeGroup = XTypeGroup(
    label: '图片',
    extensions: <String>['png', 'jpg', 'jpeg'],
  );

  var file = await openFile(acceptedTypeGroups: [pictureTtypeGroup]);

  return file;
}
