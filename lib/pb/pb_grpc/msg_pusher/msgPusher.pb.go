// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_grpc/msg_pusher/msgPusher.proto

package msg_pusher

import (
	context "context"
	pub "github.com/leallee00/pb/pb_grpc/pub"
	msg_pusher "github.com/leallee00/pb/pb_msg/msg_pusher"
	pb_pub "github.com/leallee00/pb/pb_pub"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	reflect "reflect"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

var File_pb_grpc_msg_pusher_msgPusher_proto protoreflect.FileDescriptor

var file_pb_grpc_msg_pusher_msgPusher_proto_rawDesc = []byte{
	0x0a, 0x22, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x6d, 0x73, 0x67, 0x5f, 0x70, 0x75,
	0x73, 0x68, 0x65, 0x72, 0x2f, 0x6d, 0x73, 0x67, 0x50, 0x75, 0x73, 0x68, 0x65, 0x72, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x12, 0x11, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x5f, 0x6d, 0x73,
	0x67, 0x50, 0x75, 0x73, 0x68, 0x65, 0x72, 0x1a, 0x1a, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63,
	0x2f, 0x70, 0x75, 0x62, 0x2f, 0x67, 0x72, 0x70, 0x63, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x1a, 0x11, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2f, 0x63, 0x6f, 0x6d, 0x6d,
	0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x21, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f, 0x6d,
	0x73, 0x67, 0x5f, 0x70, 0x75, 0x73, 0x68, 0x65, 0x72, 0x2f, 0x6d, 0x73, 0x67, 0x50, 0x75, 0x73,
	0x68, 0x65, 0x72, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x32, 0xe2, 0x01, 0x0a, 0x09, 0x4d, 0x73,
	0x67, 0x50, 0x75, 0x73, 0x68, 0x65, 0x72, 0x12, 0x49, 0x0a, 0x11, 0x53, 0x65, 0x6e, 0x64, 0x54,
	0x6f, 0x41, 0x69, 0x6d, 0x4c, 0x69, 0x73, 0x74, 0x55, 0x73, 0x65, 0x72, 0x12, 0x21, 0x2e, 0x70,
	0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x53, 0x65, 0x6e, 0x64, 0x54,
	0x6f, 0x41, 0x69, 0x6d, 0x55, 0x73, 0x65, 0x72, 0x4c, 0x69, 0x73, 0x74, 0x52, 0x65, 0x71, 0x1a,
	0x0f, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x43, 0x6f, 0x6d, 0x6d, 0x52, 0x73, 0x70,
	0x22, 0x00, 0x12, 0x42, 0x0a, 0x0b, 0x50, 0x75, 0x73, 0x68, 0x52, 0x65, 0x63, 0x65, 0x69, 0x70,
	0x74, 0x12, 0x20, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6d, 0x73, 0x67, 0x50, 0x75,
	0x73, 0x68, 0x65, 0x72, 0x2e, 0x50, 0x75, 0x73, 0x68, 0x52, 0x65, 0x63, 0x65, 0x69, 0x70, 0x74,
	0x52, 0x65, 0x71, 0x1a, 0x0f, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x43, 0x6f, 0x6d,
	0x6d, 0x52, 0x73, 0x70, 0x22, 0x00, 0x12, 0x46, 0x0a, 0x0d, 0x50, 0x75, 0x73, 0x68, 0x54, 0x6f,
	0x6b, 0x65, 0x6e, 0x53, 0x79, 0x6e, 0x63, 0x12, 0x22, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67,
	0x5f, 0x6d, 0x73, 0x67, 0x50, 0x75, 0x73, 0x68, 0x65, 0x72, 0x2e, 0x50, 0x75, 0x73, 0x68, 0x54,
	0x6f, 0x6b, 0x65, 0x6e, 0x53, 0x79, 0x6e, 0x63, 0x52, 0x65, 0x71, 0x1a, 0x0f, 0x2e, 0x70, 0x62,
	0x5f, 0x70, 0x75, 0x62, 0x2e, 0x43, 0x6f, 0x6d, 0x6d, 0x52, 0x73, 0x70, 0x22, 0x00, 0x42, 0x2c,
	0x5a, 0x2a, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61,
	0x6c, 0x6c, 0x65, 0x65, 0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70,
	0x63, 0x2f, 0x6d, 0x73, 0x67, 0x5f, 0x70, 0x75, 0x73, 0x68, 0x65, 0x72, 0x62, 0x06, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x33,
}

var file_pb_grpc_msg_pusher_msgPusher_proto_goTypes = []interface{}{
	(*pub.SendToAimUserListReq)(nil),    // 0: pb_grpc_pub.SendToAimUserListReq
	(*msg_pusher.PushReceiptReq)(nil),   // 1: pb_msg_msgPusher.PushReceiptReq
	(*msg_pusher.PushTokenSyncReq)(nil), // 2: pb_msg_msgPusher.PushTokenSyncReq
	(*pb_pub.CommRsp)(nil),              // 3: pb_pub.CommRsp
}
var file_pb_grpc_msg_pusher_msgPusher_proto_depIdxs = []int32{
	0, // 0: pb_grpc_msgPusher.MsgPusher.SendToAimListUser:input_type -> pb_grpc_pub.SendToAimUserListReq
	1, // 1: pb_grpc_msgPusher.MsgPusher.PushReceipt:input_type -> pb_msg_msgPusher.PushReceiptReq
	2, // 2: pb_grpc_msgPusher.MsgPusher.PushTokenSync:input_type -> pb_msg_msgPusher.PushTokenSyncReq
	3, // 3: pb_grpc_msgPusher.MsgPusher.SendToAimListUser:output_type -> pb_pub.CommRsp
	3, // 4: pb_grpc_msgPusher.MsgPusher.PushReceipt:output_type -> pb_pub.CommRsp
	3, // 5: pb_grpc_msgPusher.MsgPusher.PushTokenSync:output_type -> pb_pub.CommRsp
	3, // [3:6] is the sub-list for method output_type
	0, // [0:3] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_pb_grpc_msg_pusher_msgPusher_proto_init() }
func file_pb_grpc_msg_pusher_msgPusher_proto_init() {
	if File_pb_grpc_msg_pusher_msgPusher_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pb_grpc_msg_pusher_msgPusher_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   0,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_pb_grpc_msg_pusher_msgPusher_proto_goTypes,
		DependencyIndexes: file_pb_grpc_msg_pusher_msgPusher_proto_depIdxs,
	}.Build()
	File_pb_grpc_msg_pusher_msgPusher_proto = out.File
	file_pb_grpc_msg_pusher_msgPusher_proto_rawDesc = nil
	file_pb_grpc_msg_pusher_msgPusher_proto_goTypes = nil
	file_pb_grpc_msg_pusher_msgPusher_proto_depIdxs = nil
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConnInterface

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion6

// MsgPusherClient is the client API for MsgPusher service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type MsgPusherClient interface {
	// 发送到指定用户群组
	SendToAimListUser(ctx context.Context, in *pub.SendToAimUserListReq, opts ...grpc.CallOption) (*pb_pub.CommRsp, error)
	PushReceipt(ctx context.Context, in *msg_pusher.PushReceiptReq, opts ...grpc.CallOption) (*pb_pub.CommRsp, error)
	PushTokenSync(ctx context.Context, in *msg_pusher.PushTokenSyncReq, opts ...grpc.CallOption) (*pb_pub.CommRsp, error)
}

type msgPusherClient struct {
	cc grpc.ClientConnInterface
}

func NewMsgPusherClient(cc grpc.ClientConnInterface) MsgPusherClient {
	return &msgPusherClient{cc}
}

func (c *msgPusherClient) SendToAimListUser(ctx context.Context, in *pub.SendToAimUserListReq, opts ...grpc.CallOption) (*pb_pub.CommRsp, error) {
	out := new(pb_pub.CommRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_msgPusher.MsgPusher/SendToAimListUser", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *msgPusherClient) PushReceipt(ctx context.Context, in *msg_pusher.PushReceiptReq, opts ...grpc.CallOption) (*pb_pub.CommRsp, error) {
	out := new(pb_pub.CommRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_msgPusher.MsgPusher/PushReceipt", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *msgPusherClient) PushTokenSync(ctx context.Context, in *msg_pusher.PushTokenSyncReq, opts ...grpc.CallOption) (*pb_pub.CommRsp, error) {
	out := new(pb_pub.CommRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_msgPusher.MsgPusher/PushTokenSync", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// MsgPusherServer is the server API for MsgPusher service.
type MsgPusherServer interface {
	// 发送到指定用户群组
	SendToAimListUser(context.Context, *pub.SendToAimUserListReq) (*pb_pub.CommRsp, error)
	PushReceipt(context.Context, *msg_pusher.PushReceiptReq) (*pb_pub.CommRsp, error)
	PushTokenSync(context.Context, *msg_pusher.PushTokenSyncReq) (*pb_pub.CommRsp, error)
}

// UnimplementedMsgPusherServer can be embedded to have forward compatible implementations.
type UnimplementedMsgPusherServer struct {
}

func (*UnimplementedMsgPusherServer) SendToAimListUser(context.Context, *pub.SendToAimUserListReq) (*pb_pub.CommRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method SendToAimListUser not implemented")
}
func (*UnimplementedMsgPusherServer) PushReceipt(context.Context, *msg_pusher.PushReceiptReq) (*pb_pub.CommRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method PushReceipt not implemented")
}
func (*UnimplementedMsgPusherServer) PushTokenSync(context.Context, *msg_pusher.PushTokenSyncReq) (*pb_pub.CommRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method PushTokenSync not implemented")
}

func RegisterMsgPusherServer(s *grpc.Server, srv MsgPusherServer) {
	s.RegisterService(&_MsgPusher_serviceDesc, srv)
}

func _MsgPusher_SendToAimListUser_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(pub.SendToAimUserListReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MsgPusherServer).SendToAimListUser(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_msgPusher.MsgPusher/SendToAimListUser",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MsgPusherServer).SendToAimListUser(ctx, req.(*pub.SendToAimUserListReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _MsgPusher_PushReceipt_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(msg_pusher.PushReceiptReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MsgPusherServer).PushReceipt(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_msgPusher.MsgPusher/PushReceipt",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MsgPusherServer).PushReceipt(ctx, req.(*msg_pusher.PushReceiptReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _MsgPusher_PushTokenSync_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(msg_pusher.PushTokenSyncReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(MsgPusherServer).PushTokenSync(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_msgPusher.MsgPusher/PushTokenSync",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(MsgPusherServer).PushTokenSync(ctx, req.(*msg_pusher.PushTokenSyncReq))
	}
	return interceptor(ctx, in, info, handler)
}

var _MsgPusher_serviceDesc = grpc.ServiceDesc{
	ServiceName: "pb_grpc_msgPusher.MsgPusher",
	HandlerType: (*MsgPusherServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "SendToAimListUser",
			Handler:    _MsgPusher_SendToAimListUser_Handler,
		},
		{
			MethodName: "PushReceipt",
			Handler:    _MsgPusher_PushReceipt_Handler,
		},
		{
			MethodName: "PushTokenSync",
			Handler:    _MsgPusher_PushTokenSync_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "pb_grpc/msg_pusher/msgPusher.proto",
}
