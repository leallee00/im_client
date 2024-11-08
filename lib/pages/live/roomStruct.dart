
import 'package:fixnum/fixnum.dart';

class LiveRoom {
  late Int64  roomId;
  late int  liveStatus;
  late String title;
  late String anchorName;
  late Int64  anchorId;
  late String logoUrl;
  late String coverUrl;
  late Int64  startTime;
  late String rtmpUrl;
  late String hlsUrl;
  late String hdlUrl;
  late String replayUrl;
  late Int64  shopId;
  late Int64  actorId;

  initWithMap(Map<String, dynamic> data){
    roomId = Int64(data["roomId"]);
    liveStatus = data["liveStatus"];
    title = data["title"];
    anchorName = data["anchorName"];
    anchorId = Int64(data["anchorId"]);
    logoUrl = data["logoUrl"];
    coverUrl = data["coverUrl"];
    startTime = Int64(data["startTime"]);
    rtmpUrl = data["rtmpUrl"];
    hlsUrl = data["hlsUrl"];
    hdlUrl = data["hdlUrl"];
    replayUrl = data["replayUrl"];
    shopId = Int64(data["shopId"]);
    actorId = Int64(data["actorId"]);
  }
}