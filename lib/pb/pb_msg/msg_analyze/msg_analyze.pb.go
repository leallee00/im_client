// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_msg/msg_analyze/msg_analyze.proto

package msg_analyze

import (
	pb_pub "github.com/leallee00/pb/pb_pub"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

// 查询A与B之间的历史消息
type ReadMsgHistoryReq struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UseridA int64 `protobuf:"varint,1,opt,name=useridA,proto3" json:"useridA,omitempty"` // A用户id
	UseridB int64 `protobuf:"varint,2,opt,name=useridB,proto3" json:"useridB,omitempty"` // B用户id
	Num     int64 `protobuf:"varint,3,opt,name=num,proto3" json:"num,omitempty"`         // 请求的消息数
	Time    int64 `protobuf:"varint,4,opt,name=time,proto3" json:"time,omitempty"`       // 从time开始的num条消息
	Sn      int64 `protobuf:"varint,5,opt,name=sn,proto3" json:"sn,omitempty"`           // 通过sn判断查询开始消息
}

func (x *ReadMsgHistoryReq) Reset() {
	*x = ReadMsgHistoryReq{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ReadMsgHistoryReq) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ReadMsgHistoryReq) ProtoMessage() {}

func (x *ReadMsgHistoryReq) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ReadMsgHistoryReq.ProtoReflect.Descriptor instead.
func (*ReadMsgHistoryReq) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{0}
}

func (x *ReadMsgHistoryReq) GetUseridA() int64 {
	if x != nil {
		return x.UseridA
	}
	return 0
}

func (x *ReadMsgHistoryReq) GetUseridB() int64 {
	if x != nil {
		return x.UseridB
	}
	return 0
}

func (x *ReadMsgHistoryReq) GetNum() int64 {
	if x != nil {
		return x.Num
	}
	return 0
}

func (x *ReadMsgHistoryReq) GetTime() int64 {
	if x != nil {
		return x.Time
	}
	return 0
}

func (x *ReadMsgHistoryReq) GetSn() int64 {
	if x != nil {
		return x.Sn
	}
	return 0
}

type ReadMsgHistoryRsp struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Result     pb_pub.ErrCode `protobuf:"varint,1,opt,name=result,proto3,enum=pb_pub.ErrCode" json:"result,omitempty"` //错误码
	MsgHistory []*MsgHistory  `protobuf:"bytes,2,rep,name=msgHistory,proto3" json:"msgHistory,omitempty"`
}

func (x *ReadMsgHistoryRsp) Reset() {
	*x = ReadMsgHistoryRsp{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ReadMsgHistoryRsp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ReadMsgHistoryRsp) ProtoMessage() {}

func (x *ReadMsgHistoryRsp) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ReadMsgHistoryRsp.ProtoReflect.Descriptor instead.
func (*ReadMsgHistoryRsp) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{1}
}

func (x *ReadMsgHistoryRsp) GetResult() pb_pub.ErrCode {
	if x != nil {
		return x.Result
	}
	return pb_pub.ErrCode(0)
}

func (x *ReadMsgHistoryRsp) GetMsgHistory() []*MsgHistory {
	if x != nil {
		return x.MsgHistory
	}
	return nil
}

// 历史消息结构
type MsgHistory struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	PbCommData *pb_pub.PBCommData `protobuf:"bytes,1,opt,name=pbCommData,proto3" json:"pbCommData,omitempty"`
	PbName     string             `protobuf:"bytes,2,opt,name=pbName,proto3" json:"pbName,omitempty"`
	PbData     []byte             `protobuf:"bytes,3,opt,name=pbData,proto3" json:"pbData,omitempty"` //    int64  chatId = 4;   // 消息id
}

func (x *MsgHistory) Reset() {
	*x = MsgHistory{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *MsgHistory) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MsgHistory) ProtoMessage() {}

func (x *MsgHistory) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MsgHistory.ProtoReflect.Descriptor instead.
func (*MsgHistory) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{2}
}

func (x *MsgHistory) GetPbCommData() *pb_pub.PBCommData {
	if x != nil {
		return x.PbCommData
	}
	return nil
}

func (x *MsgHistory) GetPbName() string {
	if x != nil {
		return x.PbName
	}
	return ""
}

func (x *MsgHistory) GetPbData() []byte {
	if x != nil {
		return x.PbData
	}
	return nil
}

// 获取srcid的全部聊过天的用户
type ChatSessionsReq struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Offset int64 `protobuf:"varint,1,opt,name=offset,proto3" json:"offset,omitempty"`
	Length int64 `protobuf:"varint,2,opt,name=length,proto3" json:"length,omitempty"`
	Time   int64 `protobuf:"varint,3,opt,name=time,proto3" json:"time,omitempty"`
}

func (x *ChatSessionsReq) Reset() {
	*x = ChatSessionsReq{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ChatSessionsReq) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ChatSessionsReq) ProtoMessage() {}

func (x *ChatSessionsReq) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ChatSessionsReq.ProtoReflect.Descriptor instead.
func (*ChatSessionsReq) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{3}
}

func (x *ChatSessionsReq) GetOffset() int64 {
	if x != nil {
		return x.Offset
	}
	return 0
}

func (x *ChatSessionsReq) GetLength() int64 {
	if x != nil {
		return x.Length
	}
	return 0
}

func (x *ChatSessionsReq) GetTime() int64 {
	if x != nil {
		return x.Time
	}
	return 0
}

type ChatSessionsRsp struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	ChatSessions []*MsgHistory `protobuf:"bytes,1,rep,name=chatSessions,proto3" json:"chatSessions,omitempty"`
}

func (x *ChatSessionsRsp) Reset() {
	*x = ChatSessionsRsp{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ChatSessionsRsp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ChatSessionsRsp) ProtoMessage() {}

func (x *ChatSessionsRsp) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ChatSessionsRsp.ProtoReflect.Descriptor instead.
func (*ChatSessionsRsp) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{4}
}

func (x *ChatSessionsRsp) GetChatSessions() []*MsgHistory {
	if x != nil {
		return x.ChatSessions
	}
	return nil
}

// ChatHistoriesReq 获取历史聊天消息
type ChatHistoriesReq struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Time int64 `protobuf:"varint,1,opt,name=time,proto3" json:"time,omitempty"`
	Num  int64 `protobuf:"varint,2,opt,name=num,proto3" json:"num,omitempty"`
}

func (x *ChatHistoriesReq) Reset() {
	*x = ChatHistoriesReq{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ChatHistoriesReq) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ChatHistoriesReq) ProtoMessage() {}

func (x *ChatHistoriesReq) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ChatHistoriesReq.ProtoReflect.Descriptor instead.
func (*ChatHistoriesReq) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{5}
}

func (x *ChatHistoriesReq) GetTime() int64 {
	if x != nil {
		return x.Time
	}
	return 0
}

func (x *ChatHistoriesReq) GetNum() int64 {
	if x != nil {
		return x.Num
	}
	return 0
}

type ChatHistoriesRsp struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	ChatHistories []*MsgHistory `protobuf:"bytes,1,rep,name=chatHistories,proto3" json:"chatHistories,omitempty"`
}

func (x *ChatHistoriesRsp) Reset() {
	*x = ChatHistoriesRsp{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ChatHistoriesRsp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ChatHistoriesRsp) ProtoMessage() {}

func (x *ChatHistoriesRsp) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ChatHistoriesRsp.ProtoReflect.Descriptor instead.
func (*ChatHistoriesRsp) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{6}
}

func (x *ChatHistoriesRsp) GetChatHistories() []*MsgHistory {
	if x != nil {
		return x.ChatHistories
	}
	return nil
}

type ChatStatsReq struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Days int64 `protobuf:"varint,1,opt,name=days,proto3" json:"days,omitempty"`
}

func (x *ChatStatsReq) Reset() {
	*x = ChatStatsReq{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ChatStatsReq) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ChatStatsReq) ProtoMessage() {}

func (x *ChatStatsReq) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ChatStatsReq.ProtoReflect.Descriptor instead.
func (*ChatStatsReq) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{7}
}

func (x *ChatStatsReq) GetDays() int64 {
	if x != nil {
		return x.Days
	}
	return 0
}

type ChatStatsRsp struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Stats []*ChatStats `protobuf:"bytes,1,rep,name=stats,proto3" json:"stats,omitempty"`
}

func (x *ChatStatsRsp) Reset() {
	*x = ChatStatsRsp{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ChatStatsRsp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ChatStatsRsp) ProtoMessage() {}

func (x *ChatStatsRsp) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ChatStatsRsp.ProtoReflect.Descriptor instead.
func (*ChatStatsRsp) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{8}
}

func (x *ChatStatsRsp) GetStats() []*ChatStats {
	if x != nil {
		return x.Stats
	}
	return nil
}

type ChatStats struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	FromTime       int64 `protobuf:"varint,1,opt,name=fromTime,proto3" json:"fromTime,omitempty"`
	ToTime         int64 `protobuf:"varint,2,opt,name=toTime,proto3" json:"toTime,omitempty"`
	SendNum        int64 `protobuf:"varint,3,opt,name=sendNum,proto3" json:"sendNum,omitempty"`
	InstantRecvNum int64 `protobuf:"varint,4,opt,name=instantRecvNum,proto3" json:"instantRecvNum,omitempty"`
	OfflineRecvNum int64 `protobuf:"varint,5,opt,name=offlineRecvNum,proto3" json:"offlineRecvNum,omitempty"`
	NotRecvNum     int64 `protobuf:"varint,6,opt,name=notRecvNum,proto3" json:"notRecvNum,omitempty"`
}

func (x *ChatStats) Reset() {
	*x = ChatStats{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[9]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ChatStats) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ChatStats) ProtoMessage() {}

func (x *ChatStats) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[9]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ChatStats.ProtoReflect.Descriptor instead.
func (*ChatStats) Descriptor() ([]byte, []int) {
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP(), []int{9}
}

func (x *ChatStats) GetFromTime() int64 {
	if x != nil {
		return x.FromTime
	}
	return 0
}

func (x *ChatStats) GetToTime() int64 {
	if x != nil {
		return x.ToTime
	}
	return 0
}

func (x *ChatStats) GetSendNum() int64 {
	if x != nil {
		return x.SendNum
	}
	return 0
}

func (x *ChatStats) GetInstantRecvNum() int64 {
	if x != nil {
		return x.InstantRecvNum
	}
	return 0
}

func (x *ChatStats) GetOfflineRecvNum() int64 {
	if x != nil {
		return x.OfflineRecvNum
	}
	return 0
}

func (x *ChatStats) GetNotRecvNum() int64 {
	if x != nil {
		return x.NotRecvNum
	}
	return 0
}

var File_pb_msg_msg_analyze_msg_analyze_proto protoreflect.FileDescriptor

var file_pb_msg_msg_analyze_msg_analyze_proto_rawDesc = []byte{
	0x0a, 0x24, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f, 0x6d, 0x73, 0x67, 0x5f, 0x61, 0x6e, 0x61,
	0x6c, 0x79, 0x7a, 0x65, 0x2f, 0x6d, 0x73, 0x67, 0x5f, 0x61, 0x6e, 0x61, 0x6c, 0x79, 0x7a, 0x65,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x11, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6d,
	0x73, 0x67, 0x41, 0x6e, 0x61, 0x6c, 0x79, 0x7a, 0x65, 0x1a, 0x17, 0x70, 0x62, 0x5f, 0x70, 0x75,
	0x62, 0x2f, 0x65, 0x72, 0x72, 0x6f, 0x72, 0x5f, 0x63, 0x6f, 0x64, 0x65, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x1a, 0x11, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x7d, 0x0a, 0x11, 0x52, 0x65, 0x61, 0x64, 0x4d, 0x73, 0x67,
	0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x79, 0x52, 0x65, 0x71, 0x12, 0x18, 0x0a, 0x07, 0x75, 0x73,
	0x65, 0x72, 0x69, 0x64, 0x41, 0x18, 0x01, 0x20, 0x01, 0x28, 0x03, 0x52, 0x07, 0x75, 0x73, 0x65,
	0x72, 0x69, 0x64, 0x41, 0x12, 0x18, 0x0a, 0x07, 0x75, 0x73, 0x65, 0x72, 0x69, 0x64, 0x42, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x07, 0x75, 0x73, 0x65, 0x72, 0x69, 0x64, 0x42, 0x12, 0x10,
	0x0a, 0x03, 0x6e, 0x75, 0x6d, 0x18, 0x03, 0x20, 0x01, 0x28, 0x03, 0x52, 0x03, 0x6e, 0x75, 0x6d,
	0x12, 0x12, 0x0a, 0x04, 0x74, 0x69, 0x6d, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x03, 0x52, 0x04,
	0x74, 0x69, 0x6d, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x73, 0x6e, 0x18, 0x05, 0x20, 0x01, 0x28, 0x03,
	0x52, 0x02, 0x73, 0x6e, 0x22, 0x7b, 0x0a, 0x11, 0x52, 0x65, 0x61, 0x64, 0x4d, 0x73, 0x67, 0x48,
	0x69, 0x73, 0x74, 0x6f, 0x72, 0x79, 0x52, 0x73, 0x70, 0x12, 0x27, 0x0a, 0x06, 0x72, 0x65, 0x73,
	0x75, 0x6c, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x0f, 0x2e, 0x70, 0x62, 0x5f, 0x70,
	0x75, 0x62, 0x2e, 0x45, 0x72, 0x72, 0x43, 0x6f, 0x64, 0x65, 0x52, 0x06, 0x72, 0x65, 0x73, 0x75,
	0x6c, 0x74, 0x12, 0x3d, 0x0a, 0x0a, 0x6d, 0x73, 0x67, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x79,
	0x18, 0x02, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1d, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f,
	0x6d, 0x73, 0x67, 0x41, 0x6e, 0x61, 0x6c, 0x79, 0x7a, 0x65, 0x2e, 0x4d, 0x73, 0x67, 0x48, 0x69,
	0x73, 0x74, 0x6f, 0x72, 0x79, 0x52, 0x0a, 0x6d, 0x73, 0x67, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72,
	0x79, 0x22, 0x70, 0x0a, 0x0a, 0x4d, 0x73, 0x67, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x79, 0x12,
	0x32, 0x0a, 0x0a, 0x70, 0x62, 0x43, 0x6f, 0x6d, 0x6d, 0x44, 0x61, 0x74, 0x61, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x0b, 0x32, 0x12, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x50, 0x42, 0x43,
	0x6f, 0x6d, 0x6d, 0x44, 0x61, 0x74, 0x61, 0x52, 0x0a, 0x70, 0x62, 0x43, 0x6f, 0x6d, 0x6d, 0x44,
	0x61, 0x74, 0x61, 0x12, 0x16, 0x0a, 0x06, 0x70, 0x62, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x06, 0x70, 0x62, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x70,
	0x62, 0x44, 0x61, 0x74, 0x61, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x06, 0x70, 0x62, 0x44,
	0x61, 0x74, 0x61, 0x22, 0x55, 0x0a, 0x0f, 0x43, 0x68, 0x61, 0x74, 0x53, 0x65, 0x73, 0x73, 0x69,
	0x6f, 0x6e, 0x73, 0x52, 0x65, 0x71, 0x12, 0x16, 0x0a, 0x06, 0x6f, 0x66, 0x66, 0x73, 0x65, 0x74,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06, 0x6f, 0x66, 0x66, 0x73, 0x65, 0x74, 0x12, 0x16,
	0x0a, 0x06, 0x6c, 0x65, 0x6e, 0x67, 0x74, 0x68, 0x18, 0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06,
	0x6c, 0x65, 0x6e, 0x67, 0x74, 0x68, 0x12, 0x12, 0x0a, 0x04, 0x74, 0x69, 0x6d, 0x65, 0x18, 0x03,
	0x20, 0x01, 0x28, 0x03, 0x52, 0x04, 0x74, 0x69, 0x6d, 0x65, 0x22, 0x54, 0x0a, 0x0f, 0x43, 0x68,
	0x61, 0x74, 0x53, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e, 0x73, 0x52, 0x73, 0x70, 0x12, 0x41, 0x0a,
	0x0c, 0x63, 0x68, 0x61, 0x74, 0x53, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e, 0x73, 0x18, 0x01, 0x20,
	0x03, 0x28, 0x0b, 0x32, 0x1d, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6d, 0x73, 0x67,
	0x41, 0x6e, 0x61, 0x6c, 0x79, 0x7a, 0x65, 0x2e, 0x4d, 0x73, 0x67, 0x48, 0x69, 0x73, 0x74, 0x6f,
	0x72, 0x79, 0x52, 0x0c, 0x63, 0x68, 0x61, 0x74, 0x53, 0x65, 0x73, 0x73, 0x69, 0x6f, 0x6e, 0x73,
	0x22, 0x38, 0x0a, 0x10, 0x43, 0x68, 0x61, 0x74, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x69, 0x65,
	0x73, 0x52, 0x65, 0x71, 0x12, 0x12, 0x0a, 0x04, 0x74, 0x69, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x03, 0x52, 0x04, 0x74, 0x69, 0x6d, 0x65, 0x12, 0x10, 0x0a, 0x03, 0x6e, 0x75, 0x6d, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x03, 0x6e, 0x75, 0x6d, 0x22, 0x57, 0x0a, 0x10, 0x43, 0x68,
	0x61, 0x74, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x69, 0x65, 0x73, 0x52, 0x73, 0x70, 0x12, 0x43,
	0x0a, 0x0d, 0x63, 0x68, 0x61, 0x74, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72, 0x69, 0x65, 0x73, 0x18,
	0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1d, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6d,
	0x73, 0x67, 0x41, 0x6e, 0x61, 0x6c, 0x79, 0x7a, 0x65, 0x2e, 0x4d, 0x73, 0x67, 0x48, 0x69, 0x73,
	0x74, 0x6f, 0x72, 0x79, 0x52, 0x0d, 0x63, 0x68, 0x61, 0x74, 0x48, 0x69, 0x73, 0x74, 0x6f, 0x72,
	0x69, 0x65, 0x73, 0x22, 0x22, 0x0a, 0x0c, 0x43, 0x68, 0x61, 0x74, 0x53, 0x74, 0x61, 0x74, 0x73,
	0x52, 0x65, 0x71, 0x12, 0x12, 0x0a, 0x04, 0x64, 0x61, 0x79, 0x73, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x03, 0x52, 0x04, 0x64, 0x61, 0x79, 0x73, 0x22, 0x42, 0x0a, 0x0c, 0x43, 0x68, 0x61, 0x74, 0x53,
	0x74, 0x61, 0x74, 0x73, 0x52, 0x73, 0x70, 0x12, 0x32, 0x0a, 0x05, 0x73, 0x74, 0x61, 0x74, 0x73,
	0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1c, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f,
	0x6d, 0x73, 0x67, 0x41, 0x6e, 0x61, 0x6c, 0x79, 0x7a, 0x65, 0x2e, 0x43, 0x68, 0x61, 0x74, 0x53,
	0x74, 0x61, 0x74, 0x73, 0x52, 0x05, 0x73, 0x74, 0x61, 0x74, 0x73, 0x22, 0xc9, 0x01, 0x0a, 0x09,
	0x43, 0x68, 0x61, 0x74, 0x53, 0x74, 0x61, 0x74, 0x73, 0x12, 0x1a, 0x0a, 0x08, 0x66, 0x72, 0x6f,
	0x6d, 0x54, 0x69, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x03, 0x52, 0x08, 0x66, 0x72, 0x6f,
	0x6d, 0x54, 0x69, 0x6d, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x74, 0x6f, 0x54, 0x69, 0x6d, 0x65, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06, 0x74, 0x6f, 0x54, 0x69, 0x6d, 0x65, 0x12, 0x18, 0x0a,
	0x07, 0x73, 0x65, 0x6e, 0x64, 0x4e, 0x75, 0x6d, 0x18, 0x03, 0x20, 0x01, 0x28, 0x03, 0x52, 0x07,
	0x73, 0x65, 0x6e, 0x64, 0x4e, 0x75, 0x6d, 0x12, 0x26, 0x0a, 0x0e, 0x69, 0x6e, 0x73, 0x74, 0x61,
	0x6e, 0x74, 0x52, 0x65, 0x63, 0x76, 0x4e, 0x75, 0x6d, 0x18, 0x04, 0x20, 0x01, 0x28, 0x03, 0x52,
	0x0e, 0x69, 0x6e, 0x73, 0x74, 0x61, 0x6e, 0x74, 0x52, 0x65, 0x63, 0x76, 0x4e, 0x75, 0x6d, 0x12,
	0x26, 0x0a, 0x0e, 0x6f, 0x66, 0x66, 0x6c, 0x69, 0x6e, 0x65, 0x52, 0x65, 0x63, 0x76, 0x4e, 0x75,
	0x6d, 0x18, 0x05, 0x20, 0x01, 0x28, 0x03, 0x52, 0x0e, 0x6f, 0x66, 0x66, 0x6c, 0x69, 0x6e, 0x65,
	0x52, 0x65, 0x63, 0x76, 0x4e, 0x75, 0x6d, 0x12, 0x1e, 0x0a, 0x0a, 0x6e, 0x6f, 0x74, 0x52, 0x65,
	0x63, 0x76, 0x4e, 0x75, 0x6d, 0x18, 0x06, 0x20, 0x01, 0x28, 0x03, 0x52, 0x0a, 0x6e, 0x6f, 0x74,
	0x52, 0x65, 0x63, 0x76, 0x4e, 0x75, 0x6d, 0x42, 0x2c, 0x5a, 0x2a, 0x67, 0x69, 0x74, 0x68, 0x75,
	0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61, 0x6c, 0x6c, 0x65, 0x65, 0x30, 0x30, 0x2f,
	0x70, 0x62, 0x2f, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f, 0x6d, 0x73, 0x67, 0x5f, 0x61, 0x6e,
	0x61, 0x6c, 0x79, 0x7a, 0x65, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_pb_msg_msg_analyze_msg_analyze_proto_rawDescOnce sync.Once
	file_pb_msg_msg_analyze_msg_analyze_proto_rawDescData = file_pb_msg_msg_analyze_msg_analyze_proto_rawDesc
)

func file_pb_msg_msg_analyze_msg_analyze_proto_rawDescGZIP() []byte {
	file_pb_msg_msg_analyze_msg_analyze_proto_rawDescOnce.Do(func() {
		file_pb_msg_msg_analyze_msg_analyze_proto_rawDescData = protoimpl.X.CompressGZIP(file_pb_msg_msg_analyze_msg_analyze_proto_rawDescData)
	})
	return file_pb_msg_msg_analyze_msg_analyze_proto_rawDescData
}

var file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes = make([]protoimpl.MessageInfo, 10)
var file_pb_msg_msg_analyze_msg_analyze_proto_goTypes = []interface{}{
	(*ReadMsgHistoryReq)(nil), // 0: pb_msg_msgAnalyze.ReadMsgHistoryReq
	(*ReadMsgHistoryRsp)(nil), // 1: pb_msg_msgAnalyze.ReadMsgHistoryRsp
	(*MsgHistory)(nil),        // 2: pb_msg_msgAnalyze.MsgHistory
	(*ChatSessionsReq)(nil),   // 3: pb_msg_msgAnalyze.ChatSessionsReq
	(*ChatSessionsRsp)(nil),   // 4: pb_msg_msgAnalyze.ChatSessionsRsp
	(*ChatHistoriesReq)(nil),  // 5: pb_msg_msgAnalyze.ChatHistoriesReq
	(*ChatHistoriesRsp)(nil),  // 6: pb_msg_msgAnalyze.ChatHistoriesRsp
	(*ChatStatsReq)(nil),      // 7: pb_msg_msgAnalyze.ChatStatsReq
	(*ChatStatsRsp)(nil),      // 8: pb_msg_msgAnalyze.ChatStatsRsp
	(*ChatStats)(nil),         // 9: pb_msg_msgAnalyze.ChatStats
	(pb_pub.ErrCode)(0),       // 10: pb_pub.ErrCode
	(*pb_pub.PBCommData)(nil), // 11: pb_pub.PBCommData
}
var file_pb_msg_msg_analyze_msg_analyze_proto_depIdxs = []int32{
	10, // 0: pb_msg_msgAnalyze.ReadMsgHistoryRsp.result:type_name -> pb_pub.ErrCode
	2,  // 1: pb_msg_msgAnalyze.ReadMsgHistoryRsp.msgHistory:type_name -> pb_msg_msgAnalyze.MsgHistory
	11, // 2: pb_msg_msgAnalyze.MsgHistory.pbCommData:type_name -> pb_pub.PBCommData
	2,  // 3: pb_msg_msgAnalyze.ChatSessionsRsp.chatSessions:type_name -> pb_msg_msgAnalyze.MsgHistory
	2,  // 4: pb_msg_msgAnalyze.ChatHistoriesRsp.chatHistories:type_name -> pb_msg_msgAnalyze.MsgHistory
	9,  // 5: pb_msg_msgAnalyze.ChatStatsRsp.stats:type_name -> pb_msg_msgAnalyze.ChatStats
	6,  // [6:6] is the sub-list for method output_type
	6,  // [6:6] is the sub-list for method input_type
	6,  // [6:6] is the sub-list for extension type_name
	6,  // [6:6] is the sub-list for extension extendee
	0,  // [0:6] is the sub-list for field type_name
}

func init() { file_pb_msg_msg_analyze_msg_analyze_proto_init() }
func file_pb_msg_msg_analyze_msg_analyze_proto_init() {
	if File_pb_msg_msg_analyze_msg_analyze_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ReadMsgHistoryReq); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ReadMsgHistoryRsp); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*MsgHistory); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ChatSessionsReq); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ChatSessionsRsp); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ChatHistoriesReq); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ChatHistoriesRsp); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ChatStatsReq); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[8].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ChatStatsRsp); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes[9].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ChatStats); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pb_msg_msg_analyze_msg_analyze_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   10,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_pb_msg_msg_analyze_msg_analyze_proto_goTypes,
		DependencyIndexes: file_pb_msg_msg_analyze_msg_analyze_proto_depIdxs,
		MessageInfos:      file_pb_msg_msg_analyze_msg_analyze_proto_msgTypes,
	}.Build()
	File_pb_msg_msg_analyze_msg_analyze_proto = out.File
	file_pb_msg_msg_analyze_msg_analyze_proto_rawDesc = nil
	file_pb_msg_msg_analyze_msg_analyze_proto_goTypes = nil
	file_pb_msg_msg_analyze_msg_analyze_proto_depIdxs = nil
}
