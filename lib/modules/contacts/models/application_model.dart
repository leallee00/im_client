import 'package:quliao/db/db.dart';

class ApplicationModel {
  const ApplicationModel({
    this.data,
    this.title,
    this.createAt,
  });

  final FriendApply? data;
  final int? createAt;
  final String? title;
}
