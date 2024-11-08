import 'package:flutter/material.dart';
import 'package:quliao/config/size_extension.dart';
import 'package:quliao/event/event_bus.dart';
import 'package:quliao/event/event_modul.dart';
import 'package:quliao/pb/pb_msg/group/group.pb.dart';

class GroupNameWidget extends StatefulWidget {
  const GroupNameWidget({
    super.key,
    required this.groupId,
    this.groupDetails,
    this.style,
    this.maxLines,
    this.overflow,
    this.remark = false,
    this.showMemberCount = false,
    this.count = 0,
  });

  final int groupId;
  final GroupDetailRsp? groupDetails;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool remark;
  final bool showMemberCount;
  final int count;

  @override
  State<StatefulWidget> createState() => _GroupNameWidgetState();
}

class _GroupNameWidgetState extends State<GroupNameWidget> {
  String get name => null == widget.groupDetails
      ? ''
      : widget.groupDetails!.remark.isEmpty
          ? widget.groupDetails!.name
          : widget.groupDetails!.remark;

  @override
  void initState() {
    super.initState();
    eventBus.on<UpdateGroupName>().listen((event) {
      if (event.groupId != widget.groupId) {
        return;
      }
      widget.groupDetails?.name = event.groupDetails.name;
      widget.groupDetails?.remark = event.groupDetails.remark;
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(covariant GroupNameWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.showMemberCount) {
      return Text(
        widget.remark ? widget.groupDetails?.remark ?? '' : name,
        maxLines: widget.maxLines,
        overflow: widget.overflow,
        style: widget.style ?? Theme.of(context).textTheme.bodySmall,
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.remark ? widget.groupDetails?.remark ?? '' : name,
          maxLines: widget.maxLines,
          overflow: widget.overflow,
          style: widget.style ?? Theme.of(context).textTheme.bodySmall,
        ),
        // Text(
        //   '${widget.count}位成员',
        //   style: TextStyle(
        //     fontSize: 10.sp,
        //     color: Colors.black54,
        //   ),
        // ),
      ],
    );
  }
}
