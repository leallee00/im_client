import 'package:fixnum/fixnum.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/modules/contacts/models/label_contact_model.dart';
import 'package:quliao/modules/contacts/repository/contacts_repository.dart';

import '../../../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';

class EditLabelController extends GetxController {
  final labelNameController = TextEditingController();
  final RxList<LabelContactModel> labelContacts = RxList();
  final ScrollController scrollController = ScrollController();

  final _repository = ContactsRepository();

  void init(
    CategorizeTag categorizeTag,
  ) async {
    labelNameController.text = categorizeTag.tag;
    labelContacts.clear();

    await _repository.fetchCategoryTagMemberList(
      tagId: categorizeTag.id.toInt(),
      callback: (value) {
        final contacts = getContacts();
        final idList = value.map((e) => e.memberId.toInt()).toList();
        for (final contact in contacts) {
          final memberId = contact.userInfo.imId;
          if (idList.contains(memberId)) {
            labelContacts.add(
              LabelContactModel(data: contact),
            );
          }
        }
        labelContacts.add(
          const LabelContactModel(type: 1),
        );
      },
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
    final req = AddCategorizeTagMemberReq();

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

  void editLabel(
    CategorizeTag categorizeTag,
  ) {
    final req = EditCategorizeTagReq(
      tag: categorizeTag,
    );
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
    if (dataList.isNotEmpty) {
      _repository.editCategory(
        req: req,
      );
    }
  }

  void deleteLabel(
    CategorizeTag categorizeTag, {
    Function()? callback,
  }) {
    final req = DelCategorizeTagReq(
      tagId: categorizeTag.id,
    );
    _repository.deleteCategory(
      req: req,
      callback: () {},
    );
  }

  @override
  void onClose() {
    super.onClose();
    labelNameController.dispose();
  }
}
