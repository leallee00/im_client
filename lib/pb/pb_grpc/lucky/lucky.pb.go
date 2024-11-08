// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_grpc/lucky/lucky.proto

package lucky

import (
	context "context"
	lucky "github.com/leallee00/pb/pb_msg/lucky"
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

var File_pb_grpc_lucky_lucky_proto protoreflect.FileDescriptor

var file_pb_grpc_lucky_lucky_proto_rawDesc = []byte{
	0x0a, 0x19, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x6c, 0x75, 0x63, 0x6b, 0x79, 0x2f,
	0x6c, 0x75, 0x63, 0x6b, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0d, 0x70, 0x62, 0x5f,
	0x67, 0x72, 0x70, 0x63, 0x5f, 0x6c, 0x75, 0x63, 0x6b, 0x79, 0x1a, 0x18, 0x70, 0x62, 0x5f, 0x6d,
	0x73, 0x67, 0x2f, 0x6c, 0x75, 0x63, 0x6b, 0x79, 0x2f, 0x6c, 0x75, 0x63, 0x6b, 0x79, 0x2e, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x32, 0x44, 0x0a, 0x05, 0x4c, 0x75, 0x63, 0x6b, 0x79, 0x12, 0x3b, 0x0a,
	0x07, 0x44, 0x6f, 0x4c, 0x75, 0x63, 0x6b, 0x79, 0x12, 0x16, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73,
	0x67, 0x5f, 0x6c, 0x75, 0x63, 0x6b, 0x79, 0x2e, 0x4c, 0x75, 0x63, 0x6b, 0x79, 0x52, 0x65, 0x71,
	0x1a, 0x16, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6c, 0x75, 0x63, 0x6b, 0x79, 0x2e,
	0x4c, 0x75, 0x63, 0x6b, 0x79, 0x52, 0x73, 0x70, 0x22, 0x00, 0x42, 0x27, 0x5a, 0x25, 0x67, 0x69,
	0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61, 0x6c, 0x6c, 0x65, 0x65,
	0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x6c, 0x75,
	0x63, 0x6b, 0x79, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var file_pb_grpc_lucky_lucky_proto_goTypes = []interface{}{
	(*lucky.LuckyReq)(nil), // 0: pb_msg_lucky.LuckyReq
	(*lucky.LuckyRsp)(nil), // 1: pb_msg_lucky.LuckyRsp
}
var file_pb_grpc_lucky_lucky_proto_depIdxs = []int32{
	0, // 0: pb_grpc_lucky.Lucky.DoLucky:input_type -> pb_msg_lucky.LuckyReq
	1, // 1: pb_grpc_lucky.Lucky.DoLucky:output_type -> pb_msg_lucky.LuckyRsp
	1, // [1:2] is the sub-list for method output_type
	0, // [0:1] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_pb_grpc_lucky_lucky_proto_init() }
func file_pb_grpc_lucky_lucky_proto_init() {
	if File_pb_grpc_lucky_lucky_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pb_grpc_lucky_lucky_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   0,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_pb_grpc_lucky_lucky_proto_goTypes,
		DependencyIndexes: file_pb_grpc_lucky_lucky_proto_depIdxs,
	}.Build()
	File_pb_grpc_lucky_lucky_proto = out.File
	file_pb_grpc_lucky_lucky_proto_rawDesc = nil
	file_pb_grpc_lucky_lucky_proto_goTypes = nil
	file_pb_grpc_lucky_lucky_proto_depIdxs = nil
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConnInterface

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion6

// LuckyClient is the client API for Lucky service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type LuckyClient interface {
	// 抽奖
	DoLucky(ctx context.Context, in *lucky.LuckyReq, opts ...grpc.CallOption) (*lucky.LuckyRsp, error)
}

type luckyClient struct {
	cc grpc.ClientConnInterface
}

func NewLuckyClient(cc grpc.ClientConnInterface) LuckyClient {
	return &luckyClient{cc}
}

func (c *luckyClient) DoLucky(ctx context.Context, in *lucky.LuckyReq, opts ...grpc.CallOption) (*lucky.LuckyRsp, error) {
	out := new(lucky.LuckyRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_lucky.Lucky/DoLucky", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// LuckyServer is the server API for Lucky service.
type LuckyServer interface {
	// 抽奖
	DoLucky(context.Context, *lucky.LuckyReq) (*lucky.LuckyRsp, error)
}

// UnimplementedLuckyServer can be embedded to have forward compatible implementations.
type UnimplementedLuckyServer struct {
}

func (*UnimplementedLuckyServer) DoLucky(context.Context, *lucky.LuckyReq) (*lucky.LuckyRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DoLucky not implemented")
}

func RegisterLuckyServer(s *grpc.Server, srv LuckyServer) {
	s.RegisterService(&_Lucky_serviceDesc, srv)
}

func _Lucky_DoLucky_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(lucky.LuckyReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(LuckyServer).DoLucky(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_lucky.Lucky/DoLucky",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(LuckyServer).DoLucky(ctx, req.(*lucky.LuckyReq))
	}
	return interceptor(ctx, in, info, handler)
}

var _Lucky_serviceDesc = grpc.ServiceDesc{
	ServiceName: "pb_grpc_lucky.Lucky",
	HandlerType: (*LuckyServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "DoLucky",
			Handler:    _Lucky_DoLucky_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "pb_grpc/lucky/lucky.proto",
}
