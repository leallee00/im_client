// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_grpc/call_scene/call_scene.proto

package call_scene

import (
	context "context"
	call_scene "github.com/leallee00/pb/pb_msg/call_scene"
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

var File_pb_grpc_call_scene_call_scene_proto protoreflect.FileDescriptor

var file_pb_grpc_call_scene_call_scene_proto_rawDesc = []byte{
	0x0a, 0x23, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x63, 0x61, 0x6c, 0x6c, 0x5f, 0x73,
	0x63, 0x65, 0x6e, 0x65, 0x2f, 0x63, 0x61, 0x6c, 0x6c, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x12, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x5f, 0x63,
	0x61, 0x6c, 0x6c, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x1a, 0x22, 0x70, 0x62, 0x5f, 0x6d, 0x73,
	0x67, 0x2f, 0x63, 0x61, 0x6c, 0x6c, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2f, 0x63, 0x61, 0x6c,
	0x6c, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x11, 0x70,
	0x62, 0x5f, 0x70, 0x75, 0x62, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x32, 0xf1, 0x02, 0x0a, 0x09, 0x43, 0x61, 0x6c, 0x6c, 0x53, 0x63, 0x65, 0x6e, 0x65, 0x12, 0x40,
	0x0a, 0x04, 0x44, 0x69, 0x61, 0x6c, 0x12, 0x1a, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f,
	0x63, 0x61, 0x6c, 0x6c, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x44, 0x69, 0x61, 0x6c, 0x52,
	0x65, 0x71, 0x1a, 0x1a, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c, 0x6c,
	0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x44, 0x69, 0x61, 0x6c, 0x52, 0x73, 0x70, 0x22, 0x00,
	0x12, 0x51, 0x0a, 0x06, 0x44, 0x6f, 0x43, 0x61, 0x6c, 0x6c, 0x12, 0x34, 0x2e, 0x70, 0x62, 0x5f,
	0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c, 0x6c, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x57,
	0x61, 0x69, 0x74, 0x46, 0x6f, 0x72, 0x43, 0x61, 0x6c, 0x6c, 0x65, 0x65, 0x41, 0x6e, 0x73, 0x77,
	0x65, 0x72, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79, 0x54, 0x6f, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72,
	0x1a, 0x0f, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x43, 0x6f, 0x6d, 0x6d, 0x52, 0x73,
	0x70, 0x22, 0x00, 0x12, 0x52, 0x0a, 0x0a, 0x41, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x43, 0x61, 0x6c,
	0x6c, 0x12, 0x20, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c, 0x6c, 0x5f,
	0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x41, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x43, 0x61, 0x6c, 0x6c,
	0x52, 0x65, 0x71, 0x1a, 0x20, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61, 0x6c,
	0x6c, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x41, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x43, 0x61,
	0x6c, 0x6c, 0x52, 0x73, 0x70, 0x22, 0x00, 0x12, 0x33, 0x0a, 0x09, 0x48, 0x65, 0x61, 0x72, 0x74,
	0x42, 0x65, 0x61, 0x74, 0x12, 0x11, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x48, 0x65,
	0x61, 0x72, 0x74, 0x42, 0x65, 0x61, 0x74, 0x1a, 0x11, 0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62,
	0x2e, 0x48, 0x65, 0x61, 0x72, 0x74, 0x42, 0x65, 0x61, 0x74, 0x22, 0x00, 0x12, 0x46, 0x0a, 0x06,
	0x48, 0x61, 0x6e, 0x67, 0x55, 0x70, 0x12, 0x1c, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f,
	0x63, 0x61, 0x6c, 0x6c, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x48, 0x61, 0x6e, 0x67, 0x55,
	0x70, 0x52, 0x65, 0x71, 0x1a, 0x1c, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x63, 0x61,
	0x6c, 0x6c, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x48, 0x61, 0x6e, 0x67, 0x55, 0x70, 0x52,
	0x73, 0x70, 0x22, 0x00, 0x42, 0x2c, 0x5a, 0x2a, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63,
	0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61, 0x6c, 0x6c, 0x65, 0x65, 0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f,
	0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x63, 0x61, 0x6c, 0x6c, 0x5f, 0x73, 0x63, 0x65,
	0x6e, 0x65, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var file_pb_grpc_call_scene_call_scene_proto_goTypes = []interface{}{
	(*call_scene.DialReq)(nil),                           // 0: pb_msg_call_scene.DialReq
	(*call_scene.WaitForCalleeAnswerNotifyToServer)(nil), // 1: pb_msg_call_scene.WaitForCalleeAnswerNotifyToServer
	(*call_scene.AnswerCallReq)(nil),                     // 2: pb_msg_call_scene.AnswerCallReq
	(*pb_pub.HeartBeat)(nil),                             // 3: pb_pub.HeartBeat
	(*call_scene.HangUpReq)(nil),                         // 4: pb_msg_call_scene.HangUpReq
	(*call_scene.DialRsp)(nil),                           // 5: pb_msg_call_scene.DialRsp
	(*pb_pub.CommRsp)(nil),                               // 6: pb_pub.CommRsp
	(*call_scene.AnswerCallRsp)(nil),                     // 7: pb_msg_call_scene.AnswerCallRsp
	(*call_scene.HangUpRsp)(nil),                         // 8: pb_msg_call_scene.HangUpRsp
}
var file_pb_grpc_call_scene_call_scene_proto_depIdxs = []int32{
	0, // 0: pb_grpc_call_scene.CallScene.Dial:input_type -> pb_msg_call_scene.DialReq
	1, // 1: pb_grpc_call_scene.CallScene.DoCall:input_type -> pb_msg_call_scene.WaitForCalleeAnswerNotifyToServer
	2, // 2: pb_grpc_call_scene.CallScene.AnswerCall:input_type -> pb_msg_call_scene.AnswerCallReq
	3, // 3: pb_grpc_call_scene.CallScene.HeartBeat:input_type -> pb_pub.HeartBeat
	4, // 4: pb_grpc_call_scene.CallScene.HangUp:input_type -> pb_msg_call_scene.HangUpReq
	5, // 5: pb_grpc_call_scene.CallScene.Dial:output_type -> pb_msg_call_scene.DialRsp
	6, // 6: pb_grpc_call_scene.CallScene.DoCall:output_type -> pb_pub.CommRsp
	7, // 7: pb_grpc_call_scene.CallScene.AnswerCall:output_type -> pb_msg_call_scene.AnswerCallRsp
	3, // 8: pb_grpc_call_scene.CallScene.HeartBeat:output_type -> pb_pub.HeartBeat
	8, // 9: pb_grpc_call_scene.CallScene.HangUp:output_type -> pb_msg_call_scene.HangUpRsp
	5, // [5:10] is the sub-list for method output_type
	0, // [0:5] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_pb_grpc_call_scene_call_scene_proto_init() }
func file_pb_grpc_call_scene_call_scene_proto_init() {
	if File_pb_grpc_call_scene_call_scene_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pb_grpc_call_scene_call_scene_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   0,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_pb_grpc_call_scene_call_scene_proto_goTypes,
		DependencyIndexes: file_pb_grpc_call_scene_call_scene_proto_depIdxs,
	}.Build()
	File_pb_grpc_call_scene_call_scene_proto = out.File
	file_pb_grpc_call_scene_call_scene_proto_rawDesc = nil
	file_pb_grpc_call_scene_call_scene_proto_goTypes = nil
	file_pb_grpc_call_scene_call_scene_proto_depIdxs = nil
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConnInterface

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion6

// CallSceneClient is the client API for CallScene service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type CallSceneClient interface {
	// 创建
	Dial(ctx context.Context, in *call_scene.DialReq, opts ...grpc.CallOption) (*call_scene.DialRsp, error)
	// 拨打
	DoCall(ctx context.Context, in *call_scene.WaitForCalleeAnswerNotifyToServer, opts ...grpc.CallOption) (*pb_pub.CommRsp, error)
	// 应答
	AnswerCall(ctx context.Context, in *call_scene.AnswerCallReq, opts ...grpc.CallOption) (*call_scene.AnswerCallRsp, error)
	// 心跳
	HeartBeat(ctx context.Context, in *pb_pub.HeartBeat, opts ...grpc.CallOption) (*pb_pub.HeartBeat, error)
	// 挂断
	HangUp(ctx context.Context, in *call_scene.HangUpReq, opts ...grpc.CallOption) (*call_scene.HangUpRsp, error)
}

type callSceneClient struct {
	cc grpc.ClientConnInterface
}

func NewCallSceneClient(cc grpc.ClientConnInterface) CallSceneClient {
	return &callSceneClient{cc}
}

func (c *callSceneClient) Dial(ctx context.Context, in *call_scene.DialReq, opts ...grpc.CallOption) (*call_scene.DialRsp, error) {
	out := new(call_scene.DialRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_call_scene.CallScene/Dial", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *callSceneClient) DoCall(ctx context.Context, in *call_scene.WaitForCalleeAnswerNotifyToServer, opts ...grpc.CallOption) (*pb_pub.CommRsp, error) {
	out := new(pb_pub.CommRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_call_scene.CallScene/DoCall", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *callSceneClient) AnswerCall(ctx context.Context, in *call_scene.AnswerCallReq, opts ...grpc.CallOption) (*call_scene.AnswerCallRsp, error) {
	out := new(call_scene.AnswerCallRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_call_scene.CallScene/AnswerCall", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *callSceneClient) HeartBeat(ctx context.Context, in *pb_pub.HeartBeat, opts ...grpc.CallOption) (*pb_pub.HeartBeat, error) {
	out := new(pb_pub.HeartBeat)
	err := c.cc.Invoke(ctx, "/pb_grpc_call_scene.CallScene/HeartBeat", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *callSceneClient) HangUp(ctx context.Context, in *call_scene.HangUpReq, opts ...grpc.CallOption) (*call_scene.HangUpRsp, error) {
	out := new(call_scene.HangUpRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_call_scene.CallScene/HangUp", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// CallSceneServer is the server API for CallScene service.
type CallSceneServer interface {
	// 创建
	Dial(context.Context, *call_scene.DialReq) (*call_scene.DialRsp, error)
	// 拨打
	DoCall(context.Context, *call_scene.WaitForCalleeAnswerNotifyToServer) (*pb_pub.CommRsp, error)
	// 应答
	AnswerCall(context.Context, *call_scene.AnswerCallReq) (*call_scene.AnswerCallRsp, error)
	// 心跳
	HeartBeat(context.Context, *pb_pub.HeartBeat) (*pb_pub.HeartBeat, error)
	// 挂断
	HangUp(context.Context, *call_scene.HangUpReq) (*call_scene.HangUpRsp, error)
}

// UnimplementedCallSceneServer can be embedded to have forward compatible implementations.
type UnimplementedCallSceneServer struct {
}

func (*UnimplementedCallSceneServer) Dial(context.Context, *call_scene.DialReq) (*call_scene.DialRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Dial not implemented")
}
func (*UnimplementedCallSceneServer) DoCall(context.Context, *call_scene.WaitForCalleeAnswerNotifyToServer) (*pb_pub.CommRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DoCall not implemented")
}
func (*UnimplementedCallSceneServer) AnswerCall(context.Context, *call_scene.AnswerCallReq) (*call_scene.AnswerCallRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method AnswerCall not implemented")
}
func (*UnimplementedCallSceneServer) HeartBeat(context.Context, *pb_pub.HeartBeat) (*pb_pub.HeartBeat, error) {
	return nil, status.Errorf(codes.Unimplemented, "method HeartBeat not implemented")
}
func (*UnimplementedCallSceneServer) HangUp(context.Context, *call_scene.HangUpReq) (*call_scene.HangUpRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method HangUp not implemented")
}

func RegisterCallSceneServer(s *grpc.Server, srv CallSceneServer) {
	s.RegisterService(&_CallScene_serviceDesc, srv)
}

func _CallScene_Dial_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(call_scene.DialReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CallSceneServer).Dial(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_call_scene.CallScene/Dial",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CallSceneServer).Dial(ctx, req.(*call_scene.DialReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _CallScene_DoCall_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(call_scene.WaitForCalleeAnswerNotifyToServer)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CallSceneServer).DoCall(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_call_scene.CallScene/DoCall",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CallSceneServer).DoCall(ctx, req.(*call_scene.WaitForCalleeAnswerNotifyToServer))
	}
	return interceptor(ctx, in, info, handler)
}

func _CallScene_AnswerCall_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(call_scene.AnswerCallReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CallSceneServer).AnswerCall(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_call_scene.CallScene/AnswerCall",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CallSceneServer).AnswerCall(ctx, req.(*call_scene.AnswerCallReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _CallScene_HeartBeat_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(pb_pub.HeartBeat)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CallSceneServer).HeartBeat(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_call_scene.CallScene/HeartBeat",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CallSceneServer).HeartBeat(ctx, req.(*pb_pub.HeartBeat))
	}
	return interceptor(ctx, in, info, handler)
}

func _CallScene_HangUp_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(call_scene.HangUpReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(CallSceneServer).HangUp(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_call_scene.CallScene/HangUp",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(CallSceneServer).HangUp(ctx, req.(*call_scene.HangUpReq))
	}
	return interceptor(ctx, in, info, handler)
}

var _CallScene_serviceDesc = grpc.ServiceDesc{
	ServiceName: "pb_grpc_call_scene.CallScene",
	HandlerType: (*CallSceneServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "Dial",
			Handler:    _CallScene_Dial_Handler,
		},
		{
			MethodName: "DoCall",
			Handler:    _CallScene_DoCall_Handler,
		},
		{
			MethodName: "AnswerCall",
			Handler:    _CallScene_AnswerCall_Handler,
		},
		{
			MethodName: "HeartBeat",
			Handler:    _CallScene_HeartBeat_Handler,
		},
		{
			MethodName: "HangUp",
			Handler:    _CallScene_HangUp_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "pb_grpc/call_scene/call_scene.proto",
}
