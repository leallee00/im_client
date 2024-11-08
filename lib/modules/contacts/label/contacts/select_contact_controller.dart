import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/global/controller/global_controller.dart';

import '../../../../models/user/friendInfo.dart';

class SelectContactController extends GetxController {
  final RxList<FriendInfo> contacts = RxList();
  final Rx<Color> indexBarBg = Rx(Colors.transparent);
  final RxString currentLetter = RxString('');

  final ScrollController scrollController = ScrollController();

  final Map letterPosMap = {Config.INDEX_BAR_WORDS[0]: 0.0};
  final RxMap<int, FriendInfo> selectedMemberMap = RxMap(<int, FriendInfo>{});

  void loadContacts(
    List<FriendInfo> dataList,
  ) async {
    final value = await GlobalController.to.getContacts();
    contacts.value = value;

    if (dataList.isNotEmpty) {
      for (final item in dataList) {
        selectedMemberMap[item.userInfo.imId] = item;
      }
    }
  }

  void selectContact(
    FriendInfo contact,
  ) {
    final key = contact.userInfo.imId;
    if (selectedMemberMap.containsKey(key)) {
      selectedMemberMap.removeWhere(
        (key, value) => key == contact.userInfo.imId,
      );
    } else {
      selectedMemberMap[contact.userInfo.imId] = contact;
    }
  }

  @override
  void onClose() {
    super.onClose();
    selectedMemberMap.clear();
  }
}
