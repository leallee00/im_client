import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:get/get.dart';
import 'package:lpinyin/lpinyin.dart';
import 'package:quliao/modules/contacts/models/contact_info.dart';
import 'package:quliao/pages/chat_group/controller/group_list_controller.dart';

class GroupsController extends GetxController {
  static GroupsController get to => Get.find();

  final RxList<ContactInfo> dataList = RxList();
  final List<ContactInfo> groupList = <ContactInfo>[];

  @override
  void onReady() async {
    super.onReady();
    final value = await GroupListController.to.getGroups();

    for (final item in value) {
      groupList.add(
        ContactInfo(name: item.name, groupInfo: item),
      );
    }

    if (groupList.isNotEmpty) {
      for (final item in groupList) {
        String pinyin = PinyinHelper.getPinyinE(item.name);
        String tag = pinyin.substring(0, 1).toUpperCase();
        item.namePinyin = pinyin;
        if (RegExp('[A-Z]').hasMatch(tag)) {
          item.tagIndex = tag;
        } else {
          item.tagIndex = "#";
        }
      }
    }

    // A-Z sort.
    SuspensionUtil.sortListBySuspensionTag(groupList);

    // show sus tag.
    SuspensionUtil.setShowSuspensionStatus(groupList);

    dataList.value = groupList;
  }
}
