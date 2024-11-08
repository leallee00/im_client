import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/pages/chat_private/chat.dart';

class ContactInfo extends ISuspensionBean {
  ContactInfo({
    required this.name,
    this.id,
    this.tagIndex,
    this.namePinyin,
    this.firstLetter,
    this.data,
    this.groupInfo,
  });

  String name;
  String? id;
  String? tagIndex;
  String? namePinyin;
  String? firstLetter;
  FriendInfo? data;
  GroupInfo? groupInfo;

  @override
  String getSuspensionTag() => tagIndex!;
}
