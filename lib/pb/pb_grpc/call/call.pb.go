// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_grpc/call/call.proto

package call

import (
	context "context"
	call "github.com/leallee00/pb/pb_msg/call"
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

var File_pb_grpc_call_call_proto protoreflect.FileDescriptor

var file_pb_grpc_call_call_proto_rawDesc = []byte{
	0x0a, 0x17, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x63, 0x61, 0x6c, 0x6c, 0x2f, 0x63,
	0x61, 0x6c, 0x6c, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0c, 0x70, 0x62, 0x5f, 0x67, 0x72,
	0x70, 0x63, 0x5f, 0x63, 0x61, 0x6c, 0x6c, 0x1a, 0x16, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f,
	0x63, 0x61, 0x6c, 0x6c, 0x2f, 0x63, 0x61, 0x6c, 0x6c, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x32,
	0x87, 0x02, 0x0a, 0x04, 0x43, 0x61, 0x6c, 0x6c, 0x12, 0x36, 0x0a, 0x08, 0x4d, 0x61, 0x6b, 0x65,
	0x43, 0x61, 0x6c, 0x6c, 0x12, 0x14, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61,
	0x6c, 0x6c, 0x2e, 0x43, 0x61, 0x6c, 0x6c, 0x52, 0x65, 0x71, 0x1a, 0x14, 0x2e, 0x70, 0x62, 0x5f,
	0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c, 0x6c, 0x2e, 0x43, 0x61, 0x6c, 0x6c, 0x52, 0x73, 0x70,
	0x12, 0x38, 0x0a, 0x06, 0x41, 0x63, 0x63, 0x65, 0x70, 0x74, 0x12, 0x16, 0x2e, 0x70, 0x62, 0x5f,
	0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c, 0x6c, 0x2e, 0x41, 0x63, 0x63, 0x65, 0x70, 0x74, 0x52,
	0x65, 0x71, 0x1a, 0x16, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c, 0x6c,
	0x2e, 0x41, 0x63, 0x63, 0x65, 0x70, 0x74, 0x52, 0x73, 0x70, 0x12, 0x3b, 0x0a, 0x07, 0x44, 0x65,
	0x63, 0x6c, 0x69, 0x6e, 0x65, 0x12, 0x17, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x63,
	0x61, 0x6c, 0x6c, 0x2e, 0x44, 0x65, 0x63, 0x6c, 0x69, 0x6e, 0x65, 0x52, 0x65, 0x71, 0x1a, 0x17,
	0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c, 0x6c, 0x2e, 0x44, 0x65, 0x63,
	0x6c, 0x69, 0x6e, 0x65, 0x52, 0x73, 0x70, 0x12, 0x50, 0x0a, 0x0e, 0x5a, 0x65, 0x67, 0x6f, 0x52,
	0x65, 0x63, 0x6f, 0x72, 0x64, 0x4f, 0x76, 0x65, 0x72, 0x12, 0x1e, 0x2e, 0x70, 0x62, 0x5f, 0x6d,
	0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c, 0x6c, 0x2e, 0x5a, 0x65, 0x67, 0x6f, 0x52, 0x65, 0x63, 0x6f,
	0x72, 0x64, 0x4f, 0x76, 0x65, 0x72, 0x52, 0x65, 0x71, 0x1a, 0x1e, 0x2e, 0x70, 0x62, 0x5f, 0x6d,
	0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c, 0x6c, 0x2e, 0x5a, 0x65, 0x67, 0x6f, 0x52, 0x65, 0x63, 0x6f,
	0x72, 0x64, 0x4f, 0x76, 0x65, 0x72, 0x52, 0x73, 0x70, 0x42, 0x26, 0x5a, 0x24, 0x67, 0x69, 0x74,
	0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61, 0x6c, 0x6c, 0x65, 0x65, 0x30,
	0x30, 0x2f, 0x70, 0x62, 0x2f, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x63, 0x61, 0x6c,
	0x6c, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var file_pb_grpc_call_call_proto_goTypes = []interface{}{
	(*call.CallReq)(nil),           // 0: pb_msg_call.CallReq
	(*call.AcceptReq)(nil),         // 1: pb_msg_call.AcceptReq
	(*call.DeclineReq)(nil),        // 2: pb_msg_call.DeclineReq
	(*call.ZegoRecordOverReq)(nil), // 3: pb_msg_call.ZegoRecordOverReq
	(*call.CallRsp)(nil),           // 4: pb_msg_call.CallRsp
	(*call.AcceptRsp)(nil),         // 5: pb_msg_call.AcceptRsp
	(*call.DeclineRsp)(nil),        // 6: pb_msg_call.DeclineRsp
	(*call.ZegoRecordOverRsp)(nil), // 7: pb_msg_call.ZegoRecordOverRsp
}
var file_pb_grpc_call_call_proto_depIdxs = []int32{
	0, // 0: pb_grpc_call.Call.MakeCall:input_type -> pb_msg_call.CallReq
	1, // 1: pb_grpc_call.Call.Accept:input_type -> pb_msg_call.AcceptReq
	2, // 2: pb_grpc_call.Call.Decline:input_type -> pb_msg_call.DeclineReq
	3, // 3: pb_grpc_call.Call.ZegoRecordOver:input_type -> pb_msg_call.ZegoRecordOverReq
	4, // 4: pb_grpc_call.Call.MakeCall:output_type -> pb_msg_call.CallRsp
	5, // 5: pb_grpc_call.Call.Accept:output_type -> pb_msg_call.AcceptRsp
	6, // 6: pb_grpc_call.Call.Decline:output_type -> pb_msg_call.DeclineRsp
	7, // 7: pb_grpc_call.Call.ZegoRecordOver:output_type -> pb_msg_call.ZegoRecordOverRsp
	4, // [4:8] is the sub-list for method output_type
	0, // [0:4] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_pb_grpc_call_call_proto_init() }
func file_pb_grpc_call_call_proto_init() {
	if File_pb_grpc_call_call_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pb_grpc_call_call_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   0,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_pb_grpc_call_call_proto_goTypes,
		DependencyIndexes: file_pb_grpc_call_call_proto_depIdxs,
	}.Build()
	File_pb_grpc_call_call_proto = out.File
	file_pb_grpc_call_call_proto_rawDesc = nil
	file_pb_grpc_call_call_proto_goTypes = nil
	file_pb_grpc_call_call_proto_depIdxs = nil
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConnInterface

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion6

// CallClient is the client API for Call service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type CallClient interface {
	MakeCall(ctx context.Context, in *call.CallReq, opts ...grpc.CallOption) (*call.CallRsp, error)
	Accept(ctx context.Context, in *call.AcceptReq, opts ...grpc.CallOption) (*call.AcceptRsp, error)
	Decline(ctx context.Context, in *call.DeclineReq, opts ...grpc.CallOption) (*call.DeclineRsp, error)
	ZegoRecordOver(ctx context.Context, in *call.ZegoRecordOverReq, opts ...grpc.CallOption) (*call.ZegoRecordOverRsp, error)
}

type callClient struct {
	cc grpc.ClientConnInterface
}

func NewCallClient(cc grpc.ClientConnInterface) CallClient {
	return &callClient{cc}
}

func (c *callClient) MakeCall(ctx context.Context, in *call.CallReq, opts ...grpc.CallOption) (*call.CallRsp, error) {
	out := new(call.CallRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_call.Call/MakeCall", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *callClient) Accept(ctx context.Context, in *call.AcceptReq, opts ...grpc.CallOption) (*call.AcceptRsp, error) {
	out := new(call.AcceptRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_call.Call/Accept", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *callClient) Decline(ctx context.Context, in *call.DeclineReq, opts ...grpc.CallOption) (*call.DeclineRsp, error) {
	out := new(call.DeclineRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_call.Call/Decline", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *callClient) ZegoRecordOver(ctx context.Context, in *call.ZegoRecordOverReq, opts ...grpc.CallOption) (*call.ZegoRecordOverRsp, error) {
	out := new(call.ZegoRecordOverRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_call.Call/ZegoRecordOver", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// CallServer is the server API for Call service.
type CallServer interface {
	MakeCall(context.Context, *call.CallReq) (*call.CallRsp, error)
	Accept(context.Context, *call.AcceptReq) (*call.AcceptRsp, error)
	Decline(context.Context, *call.DeclineReq) (*call.DeclineRsp, error)
	ZegoRecordOver(context.Context, *call.ZegoRecordOverReq) (*call.ZegoRecordOverRsp, error)
}

// UnimplementedCallServer can be embedded to have forward compatible implementations.
type UnimplementedCallServer struct {
}

func (*UnimplementedCallServer) MakeCall(context.Context, *call.CallReq) (*call.CallRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method MakeCall not implemented")
}
func (*UnimplementedCallServer) Accept(context.Context, *call.AcceptReq) (*call.AcceptRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Accept not implemented")
}
func (*UnimplementedCallServer) Decline(context.Context, *call.DeclineReq) (*call.DeclineRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Decline not implemented")
}
func (*UnimplementedCallServer) ZegoRecordOver(context.Context, *call.ZegoRecordOverReq) (*call.ZegoRecordOverRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ZegoRecordOver not implemented")
}

func RegisterCallServer(s *grpc.Server, srv CallServer) {
	s.RegisterService(&_Call_serviceDesc, srv)
}

func _Call_MakeCall_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(call.CallReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CallServer).MakeCall(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_call.Call/MakeCall",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CallServer).MakeCall(ctx, req.(*call.CallReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _Call_Accept_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(call.AcceptReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CallServer).Accept(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_call.Call/Accept",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CallServer).Accept(ctx, req.(*call.AcceptReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _Call_Decline_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(call.DeclineReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CallServer).Decline(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_call.Call/Decline",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CallServer).Decline(ctx, req.(*call.DeclineReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _Call_ZegoRecordOver_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(call.ZegoRecordOverReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CallServer).ZegoRecordOver(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_call.Call/ZegoRecordOver",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CallServer).ZegoRecordOver(ctx, req.(*call.ZegoRecordOverReq))
	}
	return interceptor(ctx, in, info, handler)
}

var _Call_serviceDesc = grpc.ServiceDesc{
	ServiceName: "pb_grpc_call.Call",
	HandlerType: (*CallServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "MakeCall",
			Handler:    _Call_MakeCall_Handler,
		},
		{
			MethodName: "Accept",
			Handler:    _Call_Accept_Handler,
		},
		{
			MethodName: "Decline",
			Handler:    _Call_Decline_Handler,
		},
		{
			MethodName: "ZegoRecordOver",
			Handler:    _Call_ZegoRecordOver_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "pb_grpc/call/call.proto",
}
