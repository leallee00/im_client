import 'dart:async';

import 'package:azlistview_plus/azlistview_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lpinyin/lpinyin.dart';
import 'package:quliao/config/config.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/global/controller/global_controller.dart';
import 'package:quliao/global/controller/im_controller.dart';
import 'package:quliao/global/enum/load_state.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/utils/log/manager.dart';
import 'package:quliao/widgets/loading.dart';

import 'models/contact_info.dart';

class ContactsPageController extends GetxController {
  static ContactsPageController get to => Get.find(tag: 'contacts_page');

  final RxList<FriendInfo> contacts = RxList();
  final Rx<Color> indexBarBg = Rx(Colors.transparent);
  final RxString currentLetter = RxString('');

  final ScrollController scrollController = ScrollController();

  StreamSubscription<FriendDbChangeNotify>? msgStreamSub;
  StreamSubscription<DeleteFriendEvent>? deleteFriendStreamSub;

  final Map letterPosMap = {Config.INDEX_BAR_WORDS[0]: 0.0};

  final RxList<ContactInfo> dataList = RxList();
  final List<ContactInfo> topList = <ContactInfo>[];
  final List<ContactInfo> contactList = <ContactInfo>[];

  final Rx<LoadState> loadState = Rx(LoadState.loading);

  @override
  void onInit() {
    super.onInit();
    topList.add(ContactInfo(name: '新的朋友', tagIndex: '↑', id: '1'));
    topList.add(ContactInfo(name: '群聊', tagIndex: '↑', id: '2'));
    // topList.add(ContactInfo(name: '标签', tagIndex: '↑', id: '3'));

    msgStreamSub = eventBus.on<FriendDbChangeNotify>().listen(
      (event) {
        GetFriends(isFirst: false).then(
          (value) {
            loadData();
          },
        );
      },
    );
    deleteFriendStreamSub = eventBus.on<DeleteFriendEvent>().listen(
      (event) async {
        if (null != event.userId) {
          ImController.to.conversationListener?.onConversationDeleted(
            event.userId!.toInt(),
          );
        }
        loadData();
      },
    );
  }

  Future<void> loadData({
    bool force = true,
    bool showLoading = false,
  }) async {
    if (showLoading) {
      LoadingDialog.show();
    }
    final value = await GlobalController.to.getContacts(
      force: force,
    );

    contactList.clear();

    for (final item in value) {
      debugPrint(
        'contacts page nickname =========> ${item.nickname}',
      );
      contactList.add(
        ContactInfo(name: item.nickname, data: item),
      );
    }

    if (contactList.isNotEmpty) {
      for (final item in contactList) {
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
    SuspensionUtil.sortListBySuspensionTag(contactList);

    // show sus tag.
    SuspensionUtil.setShowSuspensionStatus(contactList);

    // add topList.
    contactList.insertAll(0, topList);

    dataList.value = contactList;
    if (dataList.isEmpty) {
      loadState.value = LoadState.empty;
    } else {
      loadState.value = LoadState.successful;
    }
    LoadingDialog.dismiss();
    update();
  }

  @override
  void onReady() async {
    super.onReady();
    try {
      loadState.value = LoadState.loading;
      final value = await GlobalController.to.getContacts(
        force: true,
      );

      contactList.clear();

      for (final item in value) {
        debugPrint(
          'contacts page nickname =========> ${item.nickname}',
        );
        contactList.add(
          ContactInfo(name: item.nickname, data: item),
        );
      }

      if (contactList.isNotEmpty) {
        for (final item in contactList) {
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
      SuspensionUtil.sortListBySuspensionTag(contactList);

      // show sus tag.
      SuspensionUtil.setShowSuspensionStatus(contactList);

      // add topList.
      contactList.insertAll(0, topList);

      dataList.value = contactList;

      if (dataList.isEmpty) {
        loadState.value = LoadState.empty;
      } else {
        loadState.value = LoadState.successful;
      }
    } catch (error) {
      loadState.value = LoadState.empty;
    }
    update();
  }

  @override
  void onClose() {
    super.onClose();
    scrollController.dispose();
    msgStreamSub?.cancel();
    deleteFriendStreamSub?.cancel();
  }
}
