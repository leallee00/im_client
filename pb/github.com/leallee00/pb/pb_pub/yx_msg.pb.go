// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_pub/yx_msg.proto

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

// 兼容云信通用消息
type YXCommMsg struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	MessageType MessageType `protobuf:"varint,1,opt,name=MessageType,proto3,enum=pb_pub.MessageType" json:"MessageType,omitempty"`
	MessageBody string      `protobuf:"bytes,2,opt,name=MessageBody,proto3" json:"MessageBody,omitempty"`
	IsImMessage int64       `protobuf:"varint,3,opt,name=IsImMessage,proto3" json:"IsImMessage,omitempty"`
}

func (x *YXCommMsg) Reset() {
	*x = YXCommMsg{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pub_yx_msg_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *YXCommMsg) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*YXCommMsg) ProtoMessage() {}

func (x *YXCommMsg) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pub_yx_msg_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use YXCommMsg.ProtoReflect.Descriptor instead.
func (*YXCommMsg) Descriptor() ([]byte, []int) {
	return file_pb_pub_yx_msg_proto_rawDescGZIP(), []int{0}
}

func (x *YXCommMsg) GetMessageType() MessageType {
	if x != nil {
		return x.MessageType
	}
	return MessageType_MessageTypeUnknown
}

func (x *YXCommMsg) GetMessageBody() string {
	if x != nil {
		return x.MessageBody
	}
	return ""
}

func (x *YXCommMsg) GetIsImMessage() int64 {
	if x != nil {
		return x.IsImMessage
	}
	return 0
}

// 云信通用消息应答
type YXCommMsgRsp struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *YXCommMsgRsp) Reset() {
	*x = YXCommMsgRsp{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pub_yx_msg_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *YXCommMsgRsp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*YXCommMsgRsp) ProtoMessage() {}

func (x *YXCommMsgRsp) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pub_yx_msg_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use YXCommMsgRsp.ProtoReflect.Descriptor instead.
func (*YXCommMsgRsp) Descriptor() ([]byte, []int) {
	return file_pb_pub_yx_msg_proto_rawDescGZIP(), []int{1}
}

type YXCommMsgNSQ struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	PbCommData  *PBCommData       `protobuf:"bytes,1,opt,name=pbCommData,proto3" json:"pbCommData,omitempty"`
	GroupId     int64             `protobuf:"varint,2,opt,name=groupId,proto3" json:"groupId,omitempty"`
	MessageType MessageType       `protobuf:"varint,3,opt,name=messageType,proto3,enum=pb_pub.MessageType" json:"messageType,omitempty"`
	MessageBody string            `protobuf:"bytes,4,opt,name=messageBody,proto3" json:"messageBody,omitempty"`
	Exp         map[string]string `protobuf:"bytes,5,rep,name=exp,proto3" json:"exp,omitempty" protobuf_key:"bytes,1,opt,name=key,proto3" protobuf_val:"bytes,2,opt,name=value,proto3"`
}

func (x *YXCommMsgNSQ) Reset() {
	*x = YXCommMsgNSQ{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_pub_yx_msg_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *YXCommMsgNSQ) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*YXCommMsgNSQ) ProtoMessage() {}

func (x *YXCommMsgNSQ) ProtoReflect() protoreflect.Message {
	mi := &file_pb_pub_yx_msg_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use YXCommMsgNSQ.ProtoReflect.Descriptor instead.
func (*YXCommMsgNSQ) Descriptor() ([]byte, []int) {
	return file_pb_pub_yx_msg_proto_rawDescGZIP(), []int{2}
}

func (x *YXCommMsgNSQ) GetPbCommData() *PBCommData {
	if x != nil {
		return x.PbCommData
	}
	return nil
}

func (x *YXCommMsgNSQ) GetGroupId() int64 {
	if x != nil {
		return x.GroupId
	}
	return 0
}

func (x *YXCommMsgNSQ) GetMessageType() MessageType {
	if x != nil {
		return x.MessageType
	}
	return MessageType_MessageTypeUnknown
}

func (x *YXCommMsgNSQ) GetMessageBody() string {
	if x != nil {
		return x.MessageBody
	}
	return ""
}

func (x *YXCommMsgNSQ) GetExp() map[string]string {
	if x != nil {
		return x.Exp
	}
	return nil
}

var File_pb_pub_yx_msg_proto protoreflect.FileDescriptor

var file_pb_pub_yx_msg_proto_rawDesc = []byte{
	0x0a, 0x13, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2f, 0x79, 0x78, 0x5f, 0x6d, 0x73, 0x67, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x06, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x1a, 0x18, 0x70,
	0x62, 0x5f, 0x70, 0x75, 0x62, 0x2f, 0x79, 0x78, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x74, 0x79, 0x70,
	0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x11, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2f,
	0x63, 0x6f, 0x6d, 0x6d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x86, 0x01, 0x0a, 0x09, 0x59,
	0x58, 0x43, 0x6f, 0x6d, 0x6d, 0x4d, 0x73, 0x67, 0x12, 0x35, 0x0a, 0x0b, 0x4d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x54, 0x79, 0x70, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x13, 0x2e,
	0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x54, 0x79,
	0x70, 0x65, 0x52, 0x0b, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x54, 0x79, 0x70, 0x65, 0x12,
	0x20, 0x0a, 0x0b, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x42, 0x6f, 0x64, 0x79, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x42, 0x6f, 0x64,
	0x79, 0x12, 0x20, 0x0a, 0x0b, 0x49, 0x73, 0x49, 0x6d, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65,
	0x18, 0x03, 0x20, 0x01, 0x28, 0x03, 0x52, 0x0b, 0x49, 0x73, 0x49, 0x6d, 0x4d, 0x65, 0x73, 0x73,
	0x61, 0x67, 0x65, 0x22, 0x0e, 0x0a, 0x0c, 0x59, 0x58, 0x43, 0x6f, 0x6d, 0x6d, 0x4d, 0x73, 0x67,
	0x52, 0x73, 0x70, 0x22, 0x9e, 0x02, 0x0a, 0x0c, 0x59, 0x58, 0x43, 0x6f, 0x6d, 0x6d, 0x4d, 0x73,
	0x67, 0x4e, 0x53, 0x51, 0x12, 0x32, 0x0a, 0x0a, 0x70, 0x62, 0x43, 0x6f, 0x6d, 0x6d, 0x44, 0x61,
	0x74, 0x61, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x12, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75,
	0x62, 0x2e, 0x50, 0x42, 0x43, 0x6f, 0x6d, 0x6d, 0x44, 0x61, 0x74, 0x61, 0x52, 0x0a, 0x70, 0x62,
	0x43, 0x6f, 0x6d, 0x6d, 0x44, 0x61, 0x74, 0x61, 0x12, 0x18, 0x0a, 0x07, 0x67, 0x72, 0x6f, 0x75,
	0x70, 0x49, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x07, 0x67, 0x72, 0x6f, 0x75, 0x70,
	0x49, 0x64, 0x12, 0x35, 0x0a, 0x0b, 0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x54, 0x79, 0x70,
	0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0e, 0x32, 0x13, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62,
	0x2e, 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x54, 0x79, 0x70, 0x65, 0x52, 0x0b, 0x6d, 0x65,
	0x73, 0x73, 0x61, 0x67, 0x65, 0x54, 0x79, 0x70, 0x65, 0x12, 0x20, 0x0a, 0x0b, 0x6d, 0x65, 0x73,
	0x73, 0x61, 0x67, 0x65, 0x42, 0x6f, 0x64, 0x79, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b,
	0x6d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x42, 0x6f, 0x64, 0x79, 0x12, 0x2f, 0x0a, 0x03, 0x65,
	0x78, 0x70, 0x18, 0x05, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1d, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75,
	0x62, 0x2e, 0x59, 0x58, 0x43, 0x6f, 0x6d, 0x6d, 0x4d, 0x73, 0x67, 0x4e, 0x53, 0x51, 0x2e, 0x45,
	0x78, 0x70, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x52, 0x03, 0x65, 0x78, 0x70, 0x1a, 0x36, 0x0a, 0x08,
	0x45, 0x78, 0x70, 0x45, 0x6e, 0x74, 0x72, 0x79, 0x12, 0x10, 0x0a, 0x03, 0x6b, 0x65, 0x79, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x6b, 0x65, 0x79, 0x12, 0x14, 0x0a, 0x05, 0x76, 0x61,
	0x6c, 0x75, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x76, 0x61, 0x6c, 0x75, 0x65,
	0x3a, 0x02, 0x38, 0x01, 0x42, 0x20, 0x5a, 0x1e, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63,
	0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61, 0x6c, 0x6c, 0x65, 0x65, 0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f,
	0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_pb_pub_yx_msg_proto_rawDescOnce sync.Once
	file_pb_pub_yx_msg_proto_rawDescData = file_pb_pub_yx_msg_proto_rawDesc
)

func file_pb_pub_yx_msg_proto_rawDescGZIP() []byte {
	file_pb_pub_yx_msg_proto_rawDescOnce.Do(func() {
		file_pb_pub_yx_msg_proto_rawDescData = protoimpl.X.CompressGZIP(file_pb_pub_yx_msg_proto_rawDescData)
	})
	return file_pb_pub_yx_msg_proto_rawDescData
}

var file_pb_pub_yx_msg_proto_msgTypes = make([]protoimpl.MessageInfo, 4)
var file_pb_pub_yx_msg_proto_goTypes = []interface{}{
	(*YXCommMsg)(nil),    // 0: pb_pub.YXCommMsg
	(*YXCommMsgRsp)(nil), // 1: pb_pub.YXCommMsgRsp
	(*YXCommMsgNSQ)(nil), // 2: pb_pub.YXCommMsgNSQ
	nil,                  // 3: pb_pub.YXCommMsgNSQ.ExpEntry
	(MessageType)(0),     // 4: pb_pub.MessageType
	(*PBCommData)(nil),   // 5: pb_pub.PBCommData
}
var file_pb_pub_yx_msg_proto_depIdxs = []int32{
	4, // 0: pb_pub.YXCommMsg.MessageType:type_name -> pb_pub.MessageType
	5, // 1: pb_pub.YXCommMsgNSQ.pbCommData:type_name -> pb_pub.PBCommData
	4, // 2: pb_pub.YXCommMsgNSQ.messageType:type_name -> pb_pub.MessageType
	3, // 3: pb_pub.YXCommMsgNSQ.exp:type_name -> pb_pub.YXCommMsgNSQ.ExpEntry
	4, // [4:4] is the sub-list for method output_type
	4, // [4:4] is the sub-list for method input_type
	4, // [4:4] is the sub-list for extension type_name
	4, // [4:4] is the sub-list for extension extendee
	0, // [0:4] is the sub-list for field type_name
}

func init() { file_pb_pub_yx_msg_proto_init() }
func file_pb_pub_yx_msg_proto_init() {
	if File_pb_pub_yx_msg_proto != nil {
		return
	}
	file_pb_pub_yx_msg_type_proto_init()
	file_pb_pub_comm_proto_init()
	if !protoimpl.UnsafeEnabled {
		file_pb_pub_yx_msg_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*YXCommMsg); i {
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
		file_pb_pub_yx_msg_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*YXCommMsgRsp); i {
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
		file_pb_pub_yx_msg_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*YXCommMsgNSQ); i {
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
			RawDescriptor: file_pb_pub_yx_msg_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   4,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_pb_pub_yx_msg_proto_goTypes,
		DependencyIndexes: file_pb_pub_yx_msg_proto_depIdxs,
		MessageInfos:      file_pb_pub_yx_msg_proto_msgTypes,
	}.Build()
	File_pb_pub_yx_msg_proto = out.File
	file_pb_pub_yx_msg_proto_rawDesc = nil
	file_pb_pub_yx_msg_proto_goTypes = nil
	file_pb_pub_yx_msg_proto_depIdxs = nil
}