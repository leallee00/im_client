// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_pub/nats_msg.proto

package pb_pub

import (
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

type NatsPBMsgChannel int32

const (
	NatsPBMsgChannel_PBMsg_SysConfigChange              NatsPBMsgChannel = 0 // 系统配置变化时发这个消息
	NatsPBMsgChannel_PBMsg_EventBus                     NatsPBMsgChannel = 1 // 消息总线，服务间传递消息使用
	NatsPBMsgChannel_PBMsg_ServiceErrStatusConfigChange NatsPBMsgChannel = 2 //服务错误描述变更通知，一般是后台通知过来
	NatsPBMsgChannel_PBMsg_ToGateProcessByGroup         NatsPBMsgChannel = 3 // 普通业务消息，发往gate,以群组方式接收，有一个服务端处理就可以了
	NatsPBMsgChannel_PBMsg_EventBusForServiceGroup      NatsPBMsgChannel = 4 // 消息总线，每种服务只处理一次,
)

// Enum value maps for NatsPBMsgChannel.
var (
	NatsPBMsgChannel_name = map[int32]string{
		0: "PBMsg_SysConfigChange",
		1: "PBMsg_EventBus",
		2: "PBMsg_ServiceErrStatusConfigChange",
		3: "PBMsg_ToGateProcessByGroup",
		4: "PBMsg_EventBusForServiceGroup",
	}
	NatsPBMsgChannel_value = map[string]int32{
		"PBMsg_SysConfigChange":              0,
		"PBMsg_EventBus":                     1,
		"PBMsg_ServiceErrStatusConfigChange": 2,
		"PBMsg_ToGateProcessByGroup":         3,
		"PBMsg_EventBusForServiceGroup":      4,
	}
)

func (x NatsPBMsgChannel) Enum() *NatsPBMsgChannel {
	p := new(NatsPBMsgChannel)
	*p = x
	return p
}

func (x NatsPBMsgChannel) String() string {
	return protoimpl.X.EnumStringOf(x.Descriptor(), protoreflect.EnumNumber(x))
}

func (NatsPBMsgChannel) Descriptor() protoreflect.EnumDescriptor {
	return file_pb_pub_nats_msg_proto_enumTypes[0].Descriptor()
}

func (NatsPBMsgChannel) Type() protoreflect.EnumType {
	return &file_pb_pub_nats_msg_proto_enumTypes[0]
}

func (x NatsPBMsgChannel) Number() protoreflect.EnumNumber {
	return protoreflect.EnumNumber(x)
}

// Deprecated: Use NatsPBMsgChannel.Descriptor instead.
func (NatsPBMsgChannel) EnumDescriptor() ([]byte, []int) {
	return file_pb_pub_nats_msg_proto_rawDescGZIP(), []int{0}
}

// 使用nats发送protobuf消息
type NatsMsgReq struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	PbCommData *PBCommData `protobuf:"bytes,1,opt,name=pbCommData,proto3" json:"pbCommData,omitempty"`
	PbName     string      `protobuf:"bytes,2,opt,name=pbName,proto3" json:"pbName,omitempty"`
	PbData     []byte      `protobuf:"bytes,3,opt,name=pbData,proto3" json:"pbData,omitempty"`
}

func (x *NatsMsgReq) Reset() {
	*x = NatsMsgReq{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pub_nats_msg_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *NatsMsgReq) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*NatsMsgReq) ProtoMessage() {}

func (x *NatsMsgReq) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pub_nats_msg_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use NatsMsgReq.ProtoReflect.Descriptor instead.
func (*NatsMsgReq) Descriptor() ([]byte, []int) {
	return file_pb_pub_nats_msg_proto_rawDescGZIP(), []int{0}
}

func (x *NatsMsgReq) GetPbCommData() *PBCommData {
	if x != nil {
		return x.PbCommData
	}
	return nil
}

func (x *NatsMsgReq) GetPbName() string {
	if x != nil {
		return x.PbName
	}
	return ""
}

func (x *NatsMsgReq) GetPbData() []byte {
	if x != nil {
		return x.PbData
	}
	return nil
}

type NatsMsgRsp struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	PbCommData *PBCommData `protobuf:"bytes,1,opt,name=pbCommData,proto3" json:"pbCommData,omitempty"`
	PbName     string      `protobuf:"bytes,2,opt,name=pbName,proto3" json:"pbName,omitempty"`
	PbData     []byte      `protobuf:"bytes,3,opt,name=pbData,proto3" json:"pbData,omitempty"`
	Code       int64       `protobuf:"varint,4,opt,name=code,proto3" json:"code,omitempty"`    // 0:成功 , 其他失败
	Result     string      `protobuf:"bytes,5,opt,name=result,proto3" json:"result,omitempty"` // 结果描述数据
}

func (x *NatsMsgRsp) Reset() {
	*x = NatsMsgRsp{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pub_nats_msg_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *NatsMsgRsp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*NatsMsgRsp) ProtoMessage() {}

func (x *NatsMsgRsp) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pub_nats_msg_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use NatsMsgRsp.ProtoReflect.Descriptor instead.
func (*NatsMsgRsp) Descriptor() ([]byte, []int) {
	return file_pb_pub_nats_msg_proto_rawDescGZIP(), []int{1}
}

func (x *NatsMsgRsp) GetPbCommData() *PBCommData {
	if x != nil {
		return x.PbCommData
	}
	return nil
}

func (x *NatsMsgRsp) GetPbName() string {
	if x != nil {
		return x.PbName
	}
	return ""
}

func (x *NatsMsgRsp) GetPbData() []byte {
	if x != nil {
		return x.PbData
	}
	return nil
}

func (x *NatsMsgRsp) GetCode() int64 {
	if x != nil {
		return x.Code
	}
	return 0
}

func (x *NatsMsgRsp) GetResult() string {
	if x != nil {
		return x.Result
	}
	return ""
}

// 系统配置更改通知,admin 服务发上来
type SysCfgChangeNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Key   string `protobuf:"bytes,1,opt,name=key,proto3" json:"key,omitempty"`
	Value string `protobuf:"bytes,2,opt,name=value,proto3" json:"value,omitempty"`
	Desc  string `protobuf:"bytes,3,opt,name=desc,proto3" json:"desc,omitempty"`
}

func (x *SysCfgChangeNotify) Reset() {
	*x = SysCfgChangeNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pub_nats_msg_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SysCfgChangeNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SysCfgChangeNotify) ProtoMessage() {}

func (x *SysCfgChangeNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pub_nats_msg_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SysCfgChangeNotify.ProtoReflect.Descriptor instead.
func (*SysCfgChangeNotify) Descriptor() ([]byte, []int) {
	return file_pb_pub_nats_msg_proto_rawDescGZIP(), []int{2}
}

func (x *SysCfgChangeNotify) GetKey() string {
	if x != nil {
		return x.Key
	}
	return ""
}

func (x *SysCfgChangeNotify) GetValue() string {
	if x != nil {
		return x.Value
	}
	return ""
}

func (x *SysCfgChangeNotify) GetDesc() string {
	if x != nil {
		return x.Desc
	}
	return ""
}

// 系统配置更改通知,im 接收到SysCfgChangeNotify后，会把数据存到db，db存储成功后发送这个消息
// 通知所有相关服务去更新配置，监听的sub还是一样的
type SysCfgChangeCanLoadFromNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Key   string `protobuf:"bytes,1,opt,name=key,proto3" json:"key,omitempty"`
	Value string `protobuf:"bytes,2,opt,name=value,proto3" json:"value,omitempty"`
	Desc  string `protobuf:"bytes,3,opt,name=desc,proto3" json:"desc,omitempty"`
}

func (x *SysCfgChangeCanLoadFromNotify) Reset() {
	*x = SysCfgChangeCanLoadFromNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pub_nats_msg_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *SysCfgChangeCanLoadFromNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*SysCfgChangeCanLoadFromNotify) ProtoMessage() {}

func (x *SysCfgChangeCanLoadFromNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pub_nats_msg_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use SysCfgChangeCanLoadFromNotify.ProtoReflect.Descriptor instead.
func (*SysCfgChangeCanLoadFromNotify) Descriptor() ([]byte, []int) {
	return file_pb_pub_nats_msg_proto_rawDescGZIP(), []int{3}
}

func (x *SysCfgChangeCanLoadFromNotify) GetKey() string {
	if x != nil {
		return x.Key
	}
	return ""
}

func (x *SysCfgChangeCanLoadFromNotify) GetValue() string {
	if x != nil {
		return x.Value
	}
	return ""
}

func (x *SysCfgChangeCanLoadFromNotify) GetDesc() string {
	if x != nil {
		return x.Desc
	}
	return ""
}

// 错误描述状态信息变更通知
type ErrStatusChangeNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	AppId    int32  `protobuf:"varint,1,opt,name=appId,proto3" json:"appId,omitempty"`
	Language string `protobuf:"bytes,2,opt,name=language,proto3" json:"language,omitempty"`
	Code     int32  `protobuf:"varint,3,opt,name=code,proto3" json:"code,omitempty"`
	Desc     string `protobuf:"bytes,4,opt,name=desc,proto3" json:"desc,omitempty"`
}

func (x *ErrStatusChangeNotify) Reset() {
	*x = ErrStatusChangeNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pub_nats_msg_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *ErrStatusChangeNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*ErrStatusChangeNotify) ProtoMessage() {}

func (x *ErrStatusChangeNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pub_nats_msg_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use ErrStatusChangeNotify.ProtoReflect.Descriptor instead.
func (*ErrStatusChangeNotify) Descriptor() ([]byte, []int) {
	return file_pb_pub_nats_msg_proto_rawDescGZIP(), []int{4}
}

func (x *ErrStatusChangeNotify) GetAppId() int32 {
	if x != nil {
		return x.AppId
	}
	return 0
}

func (x *ErrStatusChangeNotify) GetLanguage() string {
	if x != nil {
		return x.Language
	}
	return ""
}

func (x *ErrStatusChangeNotify) GetCode() int32 {
	if x != nil {
		return x.Code
	}
	return 0
}

func (x *ErrStatusChangeNotify) GetDesc() string {
	if x != nil {
		return x.Desc
	}
	return ""
}

// 批量创建机器人
type BatchCreateRobot struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Count int32 `protobuf:"varint,1,opt,name=count,proto3" json:"count,omitempty"` // 生成数量
}

func (x *BatchCreateRobot) Reset() {
	*x = BatchCreateRobot{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pub_nats_msg_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *BatchCreateRobot) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*BatchCreateRobot) ProtoMessage() {}

func (x *BatchCreateRobot) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pub_nats_msg_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use BatchCreateRobot.ProtoReflect.Descriptor instead.
func (*BatchCreateRobot) Descriptor() ([]byte, []int) {
	return file_pb_pub_nats_msg_proto_rawDescGZIP(), []int{5}
}

func (x *BatchCreateRobot) GetCount() int32 {
	if x != nil {
		return x.Count
	}
	return 0
}

var File_pb_pub_nats_msg_proto protoreflect.FileDescriptor

var file_pb_pub_nats_msg_proto_rawDesc = []byte{
	0x0a, 0x15, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2f, 0x6e, 0x61, 0x74, 0x73, 0x5f, 0x6d, 0x73,
	0x67, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x06, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x1a,
	0x11, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x22, 0x70, 0x0a, 0x0a, 0x4e, 0x61, 0x74, 0x73, 0x4d, 0x73, 0x67, 0x52, 0x65, 0x71,
	0x12, 0x32, 0x0a, 0x0a, 0x70, 0x62, 0x43, 0x6f, 0x6d, 0x6d, 0x44, 0x61, 0x74, 0x61, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x0b, 0x32, 0x12, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x50, 0x42,
	0x43, 0x6f, 0x6d, 0x6d, 0x44, 0x61, 0x74, 0x61, 0x52, 0x0a, 0x70, 0x62, 0x43, 0x6f, 0x6d, 0x6d,
	0x44, 0x61, 0x74, 0x61, 0x12, 0x16, 0x0a, 0x06, 0x70, 0x62, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x70, 0x62, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x16, 0x0a, 0x06,
	0x70, 0x62, 0x44, 0x61, 0x74, 0x61, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0c, 0x52, 0x06, 0x70, 0x62,
	0x44, 0x61, 0x74, 0x61, 0x22, 0x9c, 0x01, 0x0a, 0x0a, 0x4e, 0x61, 0x74, 0x73, 0x4d, 0x73, 0x67,
	0x52, 0x73, 0x70, 0x12, 0x32, 0x0a, 0x0a, 0x70, 0x62, 0x43, 0x6f, 0x6d, 0x6d, 0x44, 0x61, 0x74,
	0x61, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x12, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62,
	0x2e, 0x50, 0x42, 0x43, 0x6f, 0x6d, 0x6d, 0x44, 0x61, 0x74, 0x61, 0x52, 0x0a, 0x70, 0x62, 0x43,
	0x6f, 0x6d, 0x6d, 0x44, 0x61, 0x74, 0x61, 0x12, 0x16, 0x0a, 0x06, 0x70, 0x62, 0x4e, 0x61, 0x6d,
	0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x70, 0x62, 0x4e, 0x61, 0x6d, 0x65, 0x12,
	0x16, 0x0a, 0x06, 0x70, 0x62, 0x44, 0x61, 0x74, 0x61, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0c, 0x52,
	0x06, 0x70, 0x62, 0x44, 0x61, 0x74, 0x61, 0x12, 0x12, 0x0a, 0x04, 0x63, 0x6f, 0x64, 0x65, 0x18,
	0x04, 0x20, 0x01, 0x28, 0x03, 0x52, 0x04, 0x63, 0x6f, 0x64, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x72,
	0x65, 0x73, 0x75, 0x6c, 0x74, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x06, 0x72, 0x65, 0x73,
	0x75, 0x6c, 0x74, 0x22, 0x50, 0x0a, 0x12, 0x53, 0x79, 0x73, 0x43, 0x66, 0x67, 0x43, 0x68, 0x61,
	0x6e, 0x67, 0x65, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79,
	0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6b, 0x65, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x76,
	0x61, 0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75,
	0x65, 0x12, 0x12, 0x0a, 0x04, 0x64, 0x65, 0x73, 0x63, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x04, 0x64, 0x65, 0x73, 0x63, 0x22, 0x5b, 0x0a, 0x1d, 0x53, 0x79, 0x73, 0x43, 0x66, 0x67, 0x43,
	0x68, 0x61, 0x6e, 0x67, 0x65, 0x43, 0x61, 0x6e, 0x4c, 0x6f, 0x61, 0x64, 0x46, 0x72, 0x6f, 0x6d,
	0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x03, 0x6b, 0x65, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x76, 0x61, 0x6c, 0x75,
	0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65, 0x12, 0x12,
	0x0a, 0x04, 0x64, 0x65, 0x73, 0x63, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x64, 0x65,
	0x73, 0x63, 0x22, 0x71, 0x0a, 0x15, 0x45, 0x72, 0x72, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x43,
	0x68, 0x61, 0x6e, 0x67, 0x65, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x61,
	0x70, 0x70, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x05, 0x61, 0x70, 0x70, 0x49,
	0x64, 0x12, 0x1a, 0x0a, 0x08, 0x6c, 0x61, 0x6e, 0x67, 0x75, 0x61, 0x67, 0x65, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x08, 0x6c, 0x61, 0x6e, 0x67, 0x75, 0x61, 0x67, 0x65, 0x12, 0x12, 0x0a,
	0x04, 0x63, 0x6f, 0x64, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x05, 0x52, 0x04, 0x63, 0x6f, 0x64,
	0x65, 0x12, 0x12, 0x0a, 0x04, 0x64, 0x65, 0x73, 0x63, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x04, 0x64, 0x65, 0x73, 0x63, 0x22, 0x28, 0x0a, 0x10, 0x42, 0x61, 0x74, 0x63, 0x68, 0x43, 0x72,
	0x65, 0x61, 0x74, 0x65, 0x52, 0x6f, 0x62, 0x6f, 0x74, 0x12, 0x14, 0x0a, 0x05, 0x63, 0x6f, 0x75,
	0x6e, 0x74, 0x18, 0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x05, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x2a,
	0xac, 0x01, 0x0a, 0x10, 0x4e, 0x61, 0x74, 0x73, 0x50, 0x42, 0x4d, 0x73, 0x67, 0x43, 0x68, 0x61,
	0x6e, 0x6e, 0x65, 0x6c, 0x12, 0x19, 0x0a, 0x15, 0x50, 0x42, 0x4d, 0x73, 0x67, 0x5f, 0x53, 0x79,
	0x73, 0x43, 0x6f, 0x6e, 0x66, 0x69, 0x67, 0x43, 0x68, 0x61, 0x6e, 0x67, 0x65, 0x10, 0x00, 0x12,
	0x12, 0x0a, 0x0e, 0x50, 0x42, 0x4d, 0x73, 0x67, 0x5f, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x42, 0x75,
	0x73, 0x10, 0x01, 0x12, 0x26, 0x0a, 0x22, 0x50, 0x42, 0x4d, 0x73, 0x67, 0x5f, 0x53, 0x65, 0x72,
	0x76, 0x69, 0x63, 0x65, 0x45, 0x72, 0x72, 0x53, 0x74, 0x61, 0x74, 0x75, 0x73, 0x43, 0x6f, 0x6e,
	0x66, 0x69, 0x67, 0x43, 0x68, 0x61, 0x6e, 0x67, 0x65, 0x10, 0x02, 0x12, 0x1e, 0x0a, 0x1a, 0x50,
	0x42, 0x4d, 0x73, 0x67, 0x5f, 0x54, 0x6f, 0x47, 0x61, 0x74, 0x65, 0x50, 0x72, 0x6f, 0x63, 0x65,
	0x73, 0x73, 0x42, 0x79, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x10, 0x03, 0x12, 0x21, 0x0a, 0x1d, 0x50,
	0x42, 0x4d, 0x73, 0x67, 0x5f, 0x45, 0x76, 0x65, 0x6e, 0x74, 0x42, 0x75, 0x73, 0x46, 0x6f, 0x72,
	0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x47, 0x72, 0x6f, 0x75, 0x70, 0x10, 0x04, 0x42, 0x20,
	0x5a, 0x1e, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61,
	0x6c, 0x6c, 0x65, 0x65, 0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62,
	0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_pb_pub_nats_msg_proto_rawDescOnce sync.Once
	file_pb_pub_nats_msg_proto_rawDescData = file_pb_pub_nats_msg_proto_rawDesc
)

func file_pb_pub_nats_msg_proto_rawDescGZIP() []byte {
	file_pb_pub_nats_msg_proto_rawDescOnce.Do(func() {
		file_pb_pub_nats_msg_proto_rawDescData = protoimpl.X.CompressGZIP(file_pb_pub_nats_msg_proto_rawDescData)
	})
	return file_pb_pub_nats_msg_proto_rawDescData
}

var file_pb_pub_nats_msg_proto_enumTypes = make([]protoimpl.EnumInfo, 1)
var file_pb_pub_nats_msg_proto_msgTypes = make([]protoimpl.MessageInfo, 6)
var file_pb_pub_nats_msg_proto_goTypes = []interface{}{
	(NatsPBMsgChannel)(0),                 // 0: pb_pub.NatsPBMsgChannel
	(*NatsMsgReq)(nil),                    // 1: pb_pub.NatsMsgReq
	(*NatsMsgRsp)(nil),                    // 2: pb_pub.NatsMsgRsp
	(*SysCfgChangeNotify)(nil),            // 3: pb_pub.SysCfgChangeNotify
	(*SysCfgChangeCanLoadFromNotify)(nil), // 4: pb_pub.SysCfgChangeCanLoadFromNotify
	(*ErrStatusChangeNotify)(nil),         // 5: pb_pub.ErrStatusChangeNotify
	(*BatchCreateRobot)(nil),              // 6: pb_pub.BatchCreateRobot
	(*PBCommData)(nil),                    // 7: pb_pub.PBCommData
}
var file_pb_pub_nats_msg_proto_depIdxs = []int32{
	7, // 0: pb_pub.NatsMsgReq.pbCommData:type_name -> pb_pub.PBCommData
	7, // 1: pb_pub.NatsMsgRsp.pbCommData:type_name -> pb_pub.PBCommData
	2, // [2:2] is the sub-list for method output_type
	2, // [2:2] is the sub-list for method input_type
	2, // [2:2] is the sub-list for extension type_name
	2, // [2:2] is the sub-list for extension extendee
	0, // [0:2] is the sub-list for field type_name
}

func init() { file_pb_pub_nats_msg_proto_init() }
func file_pb_pub_nats_msg_proto_init() {
	if File_pb_pub_nats_msg_proto != nil {
		return
	}
	file_pb_pub_comm_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_pb_pub_nats_msg_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*NatsMsgReq); i {
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
		file_pb_pub_nats_msg_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*NatsMsgRsp); i {
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
		file_pb_pub_nats_msg_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SysCfgChangeNotify); i {
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
		file_pb_pub_nats_msg_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*SysCfgChangeCanLoadFromNotify); i {
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
		file_pb_pub_nats_msg_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*ErrStatusChangeNotify); i {
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
		file_pb_pub_nats_msg_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*BatchCreateRobot); i {
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
			RawDescriptor: file_pb_pub_nats_msg_proto_rawDesc,
			NumEnums:      1,
			NumMessages:   6,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_pb_pub_nats_msg_proto_goTypes,
		DependencyIndexes: file_pb_pub_nats_msg_proto_depIdxs,
		EnumInfos:         file_pb_pub_nats_msg_proto_enumTypes,
		MessageInfos:      file_pb_pub_nats_msg_proto_msgTypes,
	}.Build()
	File_pb_pub_nats_msg_proto = out.File
	file_pb_pub_nats_msg_proto_rawDesc = nil
	file_pb_pub_nats_msg_proto_goTypes = nil
	file_pb_pub_nats_msg_proto_depIdxs = nil
}
