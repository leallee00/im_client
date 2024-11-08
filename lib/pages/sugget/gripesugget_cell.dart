import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/config/gaps.dart';
import '../../pb/pb_msg/commim_uaa/commim_uaa.pb.dart';
import '../sugget/gripesugget_data.dart';
import 'package:quliao/models/user/userinfo.dart';
import 'package:quliao/pub/log.dart';
import 'package:quliao/models/user/userinfo.dart' as $locUinfo;

class ComplaintSuggetDetailListCell extends StatefulWidget {
  final SuggestReply suggestModel;

  const ComplaintSuggetDetailListCell({required this.suggestModel});

  @override
  _ComplaintSuggetDetailListViewCell createState() =>
      _ComplaintSuggetDetailListViewCell(suggestModel: suggestModel);
}

class _ComplaintSuggetDetailListViewCell
    extends State<ComplaintSuggetDetailListCell> {
  late String names = '用户名';
  late String avatarUrl =
      'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png'; // 暂时用的展位图
  final SuggestReply suggestModel;

  // final Suggest suggestModel;
  @override
  _ComplaintSuggetDetailListViewCell({required this.suggestModel});

  @override
  void initState() {
    super.initState();

    createdNma();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          Gaps.vGap8,
          Text(
            suggestModel.reply,
            style: TextStyle(
              fontSize: Dimens.font_sp1 * 15,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    // names = names + suggestModel.replyUserId.toString();
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey,
          backgroundImage: NetworkImage(avatarUrl),
        ),
        const SizedBox(width: 8),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              names,
              style: TextStyle(
                fontSize: Dimens.font_sp16,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              timestampToDate(suggestModel.createdAt.toString()),
              style: TextStyle(
                fontSize: Dimens.font_sp12,
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void createdNma() {
    $locUinfo.GetUserInfo(suggestModel.replyUserId.toInt()).then((value) {
      String avatarUrls = avatarUrlToDate(value.toString());
      if (avatarUrls.length > 1) {
        avatarUrl = avatarUrls;
      }
      String name = nickNameToDate(value.toString());
      print('*****drgfhyt*  $name');
      names = name;
      setState(() {});
    });

    // 正确的获取数据 但是目前有问题 解析出来为空
    // var userInfo =  GetUserInfo(suggestModel.replyUserId.toInt());
  }
}
