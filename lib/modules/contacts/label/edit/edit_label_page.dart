import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import 'package:quliao/models/user/friendInfo.dart';
import 'package:quliao/modules/contacts/label/contacts/select_contact_page.dart';
import 'package:quliao/modules/contacts/label/label_contact_item.dart';
import 'package:quliao/modules/contacts/widgets/add_button.dart';
import 'package:quliao/pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import 'package:quliao/widgets/app_bar.dart';
import 'package:quliao/widgets/button.dart';
import 'package:quliao/widgets/cell.dart';
import 'package:quliao/widgets/input.dart';

import 'edit_label_controller.dart';

/// 编辑标签
class EditLabelPage extends StatefulWidget {
  const EditLabelPage({
    super.key,
    required this.data,
  });

  final CategorizeTag data;

  @override
  State<StatefulWidget> createState() => _EditLabelPageState();
}

class _EditLabelPageState extends State<EditLabelPage> {
  final _controller = EditLabelController();

  @override
  void initState() {
    super.initState();
    _controller.init(widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: CustomAppBar(
          title: const Text('编辑标签'),
        ),
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: Dimens.gap_dp20,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: Dimens.gap_dp46,
                ),
                child: CustomInputCell(
                  title: Text(
                    '标签名字',
                    style: TextStyle(
                      fontSize: Dimens.font_sp14,
                    ),
                  ),
                  value: CustomInputNormal(
                    controller: _controller.labelNameController,
                    textAlign: TextAlign.end,
                    hintStyle: TextStyle(
                      fontSize: Dimens.font_sp14,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: Dimens.gap_dp1 / 2,
              color: Theme.of(context).dividerColor,
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(top: Dimens.gap_dp20),
              alignment: Alignment.centerLeft,
              child: Text(
                '选择成员',
                style: TextStyle(
                  fontSize: Dimens.font_sp14,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp16,
              ).copyWith(top: Dimens.gap_dp20),
              alignment: Alignment.centerLeft,
              constraints: BoxConstraints(
                minHeight: Dimens.gap_dp10 * 10,
                maxHeight: Dimens.gap_dp10 * 40,
              ),
              child: Obx(
                () {
                  final length = _controller.labelContacts.length;
                  debugPrint('length ======> $length');
                  return GridView.builder(
                    controller: _controller.scrollController,
                    itemBuilder: (context, index) {
                      final labelContact = _controller.labelContacts[index];
                      if (labelContact.type == 0) {
                        return LabelContactItem(
                          data: labelContact.data!,
                          onDelete: () {
                            _controller.deleteContact(
                              labelContact.data!,
                            );
                          },
                        );
                      }
                      return AddButton(
                        padding: _controller.labelContacts.length == 1
                            ? null
                            : EdgeInsets.all(Dimens.gap_dp8),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<List<FriendInfo>>(
                              builder: (context) {
                                return SelectContactPage(
                                  contacts: _controller.getContacts(),
                                );
                              },
                            ),
                          ).then(
                            (value) {
                              if (null != value && value.isNotEmpty) {
                                _controller.addContacts(value);
                              }
                            },
                          );
                        },
                      );
                    },
                    itemCount: _controller.labelContacts.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      mainAxisSpacing:
                          _controller.labelContacts.length == 1 ? 0 : 0,
                      crossAxisSpacing:
                          _controller.labelContacts.length == 1 ? 0 : 0,
                    ),
                  );
                },
              ),
            ),
            Expanded(child: Gaps.empty),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.gap_dp24,
              ).copyWith(bottom: Dimens.gap_dp20),
              child: CustomButton(
                width: double.infinity,
                height: Dimens.gap_dp46,
                size: CustomButtonSize.medium,
                shape: CustomButtonShape.stadium,
                backgroundColor: Colors.redAccent,
                onPressed: () {
                  _controller.deleteLabel(
                    widget.data,
                    callback: () {
                      Navigator.pop(context, true);
                    },
                  );
                },
                child: Text(
                  '删除标签',
                  style: TextStyle(
                    fontSize: Dimens.font_sp14,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}