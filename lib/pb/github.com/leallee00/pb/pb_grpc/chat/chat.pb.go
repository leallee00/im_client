// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_grpc/chat/chat.proto

package chat

import (
	context "context"
	gate "github.com/leallee00/pb/pb_msg/gate"
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

var File_pb_grpc_chat_chat_proto protoreflect.FileDescriptor

var file_pb_grpc_chat_chat_proto_rawDesc = []byte{
	0x0a, 0x17, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x63, 0x68, 0x61, 0x74, 0x2f, 0x63,
	0x68, 0x61, 0x74, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0c, 0x70, 0x62, 0x5f, 0x67, 0x72,
	0x70, 0x63, 0x5f, 0x63, 0x68, 0x61, 0x74, 0x1a, 0x16, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f,
	0x67, 0x61, 0x74, 0x65, 0x2f, 0x67, 0x61, 0x74, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a,
	0x11, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x2e, 0x70, 0x72, 0x6f,
	0x74, 0x6f, 0x32, 0x38, 0x0a, 0x04, 0x43, 0x68, 0x61, 0x74, 0x12, 0x30, 0x0a, 0x04, 0x43, 0x68,
	0x61, 0x74, 0x12, 0x15, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x67, 0x61, 0x74, 0x65,
	0x2e, 0x43, 0x68, 0x61, 0x74, 0x54, 0x65, 0x78, 0x74, 0x1a, 0x0f, 0x2e, 0x70, 0x62, 0x5f, 0x70,
	0x75, 0x62, 0x2e, 0x43, 0x6f, 0x6d, 0x6d, 0x52, 0x73, 0x70, 0x22, 0x00, 0x42, 0x26, 0x5a, 0x24,
	0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61, 0x6c, 0x6c,
	0x65, 0x65, 0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f,
	0x63, 0x68, 0x61, 0x74, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var file_pb_grpc_chat_chat_proto_goTypes = []interface{}{
	(*gate.ChatText)(nil),  // 0: pb_msg_gate.ChatText
	(*pb_pub.CommRsp)(nil), // 1: pb_pub.CommRsp
}
var file_pb_grpc_chat_chat_proto_depIdxs = []int32{
	0, // 0: pb_grpc_chat.Chat.Chat:input_type -> pb_msg_gate.ChatText
	1, // 1: pb_grpc_chat.Chat.Chat:output_type -> pb_pub.CommRsp
	1, // [1:2] is the sub-list for method output_type
	0, // [0:1] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_pb_grpc_chat_chat_proto_init() }
func file_pb_grpc_chat_chat_proto_init() {
	if File_pb_grpc_chat_chat_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pb_grpc_chat_chat_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   0,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_pb_grpc_chat_chat_proto_goTypes,
		DependencyIndexes: file_pb_grpc_chat_chat_proto_depIdxs,
	}.Build()
	File_pb_grpc_chat_chat_proto = out.File
	file_pb_grpc_chat_chat_proto_rawDesc = nil
	file_pb_grpc_chat_chat_proto_goTypes = nil
	file_pb_grpc_chat_chat_proto_depIdxs = nil
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConnInterface

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion6

// ChatClient is the client API for Chat service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type ChatClient interface {
	// 私聊逻辑判断
	Chat(ctx context.Context, in *gate.ChatText, opts ...grpc.CallOption) (*pb_pub.CommRsp, error)
}

type chatClient struct {
	cc grpc.ClientConnInterface
}

func NewChatClient(cc grpc.ClientConnInterface) ChatClient {
	return &chatClient{cc}
}

func (c *chatClient) Chat(ctx context.Context, in *gate.ChatText, opts ...grpc.CallOption) (*pb_pub.CommRsp, error) {
	out := new(pb_pub.CommRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_chat.Chat/Chat", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// ChatServer is the server API for Chat service.
type ChatServer interface {
	// 私聊逻辑判断
	Chat(context.Context, *gate.ChatText) (*pb_pub.CommRsp, error)
}

// UnimplementedChatServer can be embedded to have forward compatible implementations.
type UnimplementedChatServer struct {
}

func (*UnimplementedChatServer) Chat(context.Context, *gate.ChatText) (*pb_pub.CommRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Chat not implemented")
}

func RegisterChatServer(s *grpc.Server, srv ChatServer) {
	s.RegisterService(&_Chat_serviceDesc, srv)
}

func _Chat_Chat_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(gate.ChatText)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ChatServer).Chat(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_chat.Chat/Chat",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ChatServer).Chat(ctx, req.(*gate.ChatText))
	}
	return interceptor(ctx, in, info, handler)
}

var _Chat_serviceDesc = grpc.ServiceDesc{
	ServiceName: "pb_grpc_chat.Chat",
	HandlerType: (*ChatServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Chat",
			Handler:    _Chat_Chat_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "pb_grpc/chat/chat.proto",
}
