////////////////////////////////////////////////////////////////////////////////
/// 使用说明：
/// 消息数量展示角标
/// 把 CornerMarkPage 放到合适的位置， 设置 sessionId和msgCountType
/// sessionId 可以为好友id【私聊场景】，群id等【群聊场景】 其他可以唯一标识一类聊天的关键字
/// msgCountType为消息类型，ENMsgCountType
///
/// 设置好后根据消息逻辑调用更改函数【msgCountSpInc 加一操作、msgCountSpSet 直接设置操作】即可
///
////////////////////////////////////////////////////////////////////////////////
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quliao/config/dimens.dart';
import 'package:quliao/models/Global.dart';

import '../../event/event_bus.dart';
import '../../models/user/myinfo.dart';
import 'package:quliao/pub/log.dart';

import '../../pub/pub-def.dart';

///////////////////////////////////////////////////////////////////////////////
// 数据定义
enum ENMsgCountType{
  none, // 无
  privateMsgCount, // 私聊消息条数
  groupMsgCount, // 群聊消息条数
  msgCount, // 私聊+群聊总条数
  friendList, // 通讯录，加好友请求条数
  totalMsg, // 通讯录，加好友请求条数
}

// 事件
class EventOnMsgCountChange {
  int sessionId =0;
  ENMsgCountType msgCountType = ENMsgCountType.privateMsgCount;
  int curCount = 0;
  int changeCount = 0;
}

String _makeKey(int sessionId, ENMsgCountType msgCountType){
  return "${AppUserInfo().imId}_${sessionId}_$msgCountType";
}

var _versionMap = <String, int>{};
int _countVersion = 0;

int GetNewCountVersion(){
  return _countVersion ++;
}

void SetCountVersion(String key, int version){
  _versionMap[key] = version;
}

bool IsNewVersion(String key, int version){
  return version > (_versionMap[key]??0);
}

// Global()
// SharedPreferences prefs = SharedPreferences.getInstance();
// 数据定义
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// 消息条数操作函数 开始
// key value 中消息数量增长 changeCount， 不设置则增长1
int msgCountSpInc(int sessionId, ENMsgCountType msgCountType, {int changeCount = 1}) {
  var sKey = _makeKey(sessionId, msgCountType);
  // log("》》》》》》》》》》》》》》》》》》》》》》》  skey:${sKey} _curKey=${_curKey} ",deap: 2);
  if (sKey == _curKey){
    // 不需更新
    return 0;
  }

  // SharedPreferences prefs = await SharedPreferences.getInstance();
  var value = Global.prefs.getInt(sKey)??0;
  var curCount = value + changeCount;
  Global.prefs.setInt(sKey, curCount).then((value) {
    // log("--- msgCountSpInc 111111111111111111111111111  set ${sKey}=${curCount}",deap: 2);
    // 发送变化通知
    eventBus.fire(EventOnMsgCountChange()
      ..sessionId = sessionId
      ..msgCountType = msgCountType
      ..curCount = curCount
      ..changeCount = changeCount
    );
  });

  // 更新总消息条数
  switch(msgCountType){
    case ENMsgCountType.privateMsgCount:
    case ENMsgCountType.groupMsgCount:
      msgCountSpInc(0,ENMsgCountType.msgCount);
      break;
    default:
      // 其他情况不处理
      break;
  }

  // log("+++++++++sKey:${sKey}++++msgCountSpInc(sessionId:${sessionId}, msgCountType:${msgCountType}, changeCount:${changeCount} +++++++++==precount:${value}=curCount:${curCount}===++++++");
  return curCount;
}

// 直接设置值
int msgCountSpSet(int sessionId, ENMsgCountType msgCountType, int count) {
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  var sKey = _makeKey(sessionId, msgCountType);
  var preValue = Global.prefs.getInt(sKey) ?? 0;
  // 如果相等就不用设置了
  if (preValue == count){
    return count;
  }

  Global.prefs.setInt(_makeKey(sessionId, msgCountType), count).then((value){
    log("-111111111111111111111111111  set ${sKey}=${count}");
    // 发送变化通知
    eventBus.fire(EventOnMsgCountChange()
      ..sessionId = sessionId
      ..msgCountType = msgCountType
      ..curCount = count
      ..changeCount = count - preValue
    );
  });

  // 更新总消息条数
  switch(msgCountType){
    case ENMsgCountType.privateMsgCount:
    case ENMsgCountType.groupMsgCount:
      if (count == 0){
        // 清除消息条数，那就都清除了
        msgCountSpSet(0,ENMsgCountType.msgCount,0);
      }else{
        msgCountSpInc(0,ENMsgCountType.msgCount, changeCount:count);
      }
      break;
    default:
      break;
  }

  return count;
}

// 获取值
int msgCountSpGet(int sessionId, ENMsgCountType msgCountType) {
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  var value = Global.prefs.getInt(_makeKey(sessionId, msgCountType))??0;
  log("-111111111111111111111111111  get ${_makeKey(sessionId, msgCountType)}=${value}");
  return value;
}

String _curKey = ""; //  这个当前key不需要数量增长
void setCurKey(int sessionId, ENMsgCountType msgCountType){
  _curKey = _makeKey(sessionId, msgCountType);

  // log("》》》》》》》》》》》》》》》》》》》》》》》  set _curKey=${_curKey} ");
}

ENMsgCountType ChatTypeToMsgCountType(CHAT_TYPE chatType){
  // 清楚消息条数
  var msgCountType = ENMsgCountType.privateMsgCount;
  switch(chatType){
    case CHAT_TYPE.PRIVATE:
      msgCountType = ENMsgCountType.privateMsgCount;
      break;
    case CHAT_TYPE.GROUP:
      msgCountType = ENMsgCountType.groupMsgCount;
      break;
  }

  return msgCountType;
}

// 消息条数操作函数 结束
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// 消息条数展示页面 开始
class MyMsgBadgerPage extends StatefulWidget {
  const MyMsgBadgerPage(
      this.sessionId,
      this.msgCountType,
      {super.key, this.scale= 100});

  final int sessionId;
  final ENMsgCountType msgCountType;
  final int scale; // 百分比，比如 50则为 50%

  @override
  MyMsgBadgerPageState createState() => MyMsgBadgerPageState();
}

// Widget
class MyMsgBadgerPageState extends State<MyMsgBadgerPage> {
  int count = 0;

  // 监听事件
  late StreamSubscription<EventOnMsgCountChange> eventSub;

  @override
  void initState() {
    // log("++++++++添加气泡++++++++++++ sessionId:${widget.sessionId} msgCountKey:${widget.msgCountType} ");
    super.initState();
    count = msgCountSpGet(widget.sessionId, widget.msgCountType);

    // refresh();

    // 注册事件监听
    eventSub = eventBus.on<EventOnMsgCountChange>().listen((event) {
      log("++++++++++++++++++get msg $event");
      if (event.sessionId == widget.sessionId &&
          event.msgCountType == widget.msgCountType) {
        refresh();
      }
    });
  }

  @override
  void dispose(){
    // 注销事件监听
    eventSub.cancel();
    super.dispose();
  }

  // 更新界面
  Future<void> refresh() async {
    // log("+++++++++in+++++++");
    // 更新数据
    // .then((value) {
    //   log("++++++++++++++++get widget.sessionId:${widget.sessionId}, widget.msgCountKey:${widget.msgCountKey} value:${value}");
      setState(() {
        count = msgCountSpGet(widget.sessionId, widget.msgCountType);
      });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Offstage(
      offstage: count == 0,
      child: Container(
        height: Dimens.gap_dp14,
        constraints: BoxConstraints(
          minWidth: Dimens.gap_dp14,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFFE456A),
          borderRadius: BorderRadius.circular(7 * Dimens.gap_dp1),
        ),
        padding: EdgeInsets.symmetric(
            horizontal: Dimens.gap_dp14 - Dimens.font_sp10),
        alignment: Alignment.center,
        child: Text(
          count > 99 ? '99+' : '$count',
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
            color: Theme.of(context).colorScheme.onError,
            fontSize: Dimens.font_sp10,
          ),
        ),
      ),
    );
    // return Offstage(
    //   offstage: count == 0, // == 0时不需展示个数
    //   // offstage:false,
    //   child:
    //   Container(
    //     decoration: BoxDecoration(
    //       color: Colors.redAccent,
    //       borderRadius:
    //       BorderRadius.circular(12*widget.scale/100),
    //     ),
    //     padding: EdgeInsets.only(
    //         left: 5*widget.scale/100,
    //         right: 5*widget.scale/100,
    //         bottom: 2*widget.scale/100,
    //         top: 2*widget.scale/100),
    //     child: Text(
    //       "$count",
    //       style: TextStyle(
    //           color: Colors.white,
    //           fontSize: 12*widget.scale/100),
    //     ),
    //   ),
    // );
  }
}
// 消息条数展示页面 结束
////////////////////////////////////////////////////////////////////////////////

