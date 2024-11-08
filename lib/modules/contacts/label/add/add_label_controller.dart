import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/modules/contacts/models/label_contact_model.dart';
import 'package:quliao/modules/contacts/repository/contacts_repository.dart';

import '../../../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class AddLabelController extends GetxController {
  final labelNameController = TextEditingController();
  final RxList<LabelContactModel> labelContacts = RxList();
  final ScrollController scrollController = ScrollController();

  final _repository = ContactsRepository();

  @override
  void onInit() {
    super.onInit();
    labelContacts.clear();
    labelContacts.add(
      const LabelContactModel(type: 1),
    );
  }

  List<FriendInfo> getContacts() {
    final dataList = <FriendInfo>[];
    for (final item in labelContacts) {
      if (item.type == 0) {
        dataList.add(item.data!);
      }
    }
    return dataList;
  }

  void addContacts(
    List<FriendInfo> contacts,
  ) {
    final labelContactList = <LabelContactModel>[];
    for (final item in contacts) {
      labelContactList.add(
        LabelContactModel(data: item),
      );
    }
    final length = labelContacts.length;
    labelContacts.insertAll(0, labelContactList);
    Future.delayed(
      const Duration(milliseconds: 200),
      () {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      },
    );
  }

  void deleteContact(
    FriendInfo contact,
  ) {
    labelContacts.removeWhere(
      (element) =>
          element.type == 0 && element.data!.friendId == contact.friendId,
    );
  }

  void addLabel(
    BuildContext context,
  ) {
    final dataList = <CategorizeTagMember>[];
    for (final item in labelContacts) {
      if (item.type == 0) {
        dataList.add(
          CategorizeTagMember(
            memberId: Int64(item.data!.userInfo.imId),
          ),
        );
      }
    }
    final req = AddCategorizeTagReq(
      tag: labelNameController.text,
      member: dataList,
    );
    if (dataList.isNotEmpty) {
      _repository.addCategory(
        req: req,
        callback: (value) {
          Navigator.pop(context, value);
        },
      );
    }
  }

  @override
  void onClose() {
    super.onClose();
    labelNameController.dispose();
  }
}
