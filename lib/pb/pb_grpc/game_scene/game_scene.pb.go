// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_grpc/game_scene/game_scene.proto

package game_scene

import (
	context "context"
	game_scene "github.com/leallee00/pb/pb_msg/game_scene"
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

var File_pb_grpc_game_scene_game_scene_proto protoreflect.FileDescriptor

var file_pb_grpc_game_scene_game_scene_proto_rawDesc = []byte{
	0x0a, 0x23, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73,
	0x63, 0x65, 0x6e, 0x65, 0x2f, 0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e,
	0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x12, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x5f, 0x67,
	0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x1a, 0x11, 0x70, 0x62, 0x5f, 0x70, 0x75,
	0x62, 0x2f, 0x63, 0x6f, 0x6d, 0x6d, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x22, 0x70, 0x62,
	0x5f, 0x6d, 0x73, 0x67, 0x2f, 0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2f,
	0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x32, 0x8b, 0x03, 0x0a, 0x09, 0x47, 0x61, 0x6d, 0x65, 0x53, 0x63, 0x65, 0x6e, 0x65, 0x12, 0x33,
	0x0a, 0x09, 0x48, 0x65, 0x61, 0x72, 0x74, 0x42, 0x65, 0x61, 0x74, 0x12, 0x11, 0x2e, 0x70, 0x62,
	0x5f, 0x70, 0x75, 0x62, 0x2e, 0x48, 0x65, 0x61, 0x72, 0x74, 0x42, 0x65, 0x61, 0x74, 0x1a, 0x11,
	0x2e, 0x70, 0x62, 0x5f, 0x70, 0x75, 0x62, 0x2e, 0x48, 0x65, 0x61, 0x72, 0x74, 0x42, 0x65, 0x61,
	0x74, 0x22, 0x00, 0x12, 0x50, 0x0a, 0x0a, 0x47, 0x61, 0x6d, 0x65, 0x49, 0x6e, 0x76, 0x69, 0x74,
	0x65, 0x12, 0x20, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x67, 0x61, 0x6d, 0x65, 0x5f,
	0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x47, 0x61, 0x6d, 0x65, 0x49, 0x6e, 0x76, 0x69, 0x74, 0x65,
	0x52, 0x65, 0x71, 0x1a, 0x20, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x67, 0x61, 0x6d,
	0x65, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x47, 0x61, 0x6d, 0x65, 0x49, 0x6e, 0x76, 0x69,
	0x74, 0x65, 0x52, 0x73, 0x70, 0x12, 0x59, 0x0a, 0x0d, 0x47, 0x61, 0x6d, 0x65, 0x44, 0x69, 0x73,
	0x69, 0x6e, 0x76, 0x69, 0x74, 0x65, 0x12, 0x23, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f,
	0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e, 0x47, 0x61, 0x6d, 0x65, 0x44,
	0x69, 0x73, 0x69, 0x6e, 0x76, 0x69, 0x74, 0x65, 0x52, 0x65, 0x71, 0x1a, 0x23, 0x2e, 0x70, 0x62,
	0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x2e,
	0x47, 0x61, 0x6d, 0x65, 0x44, 0x69, 0x73, 0x69, 0x6e, 0x76, 0x69, 0x74, 0x65, 0x52, 0x73, 0x70,
	0x12, 0x50, 0x0a, 0x0a, 0x47, 0x61, 0x6d, 0x65, 0x41, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x12, 0x20,
	0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65,
	0x6e, 0x65, 0x2e, 0x47, 0x61, 0x6d, 0x65, 0x41, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x52, 0x65, 0x71,
	0x1a, 0x20, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73,
	0x63, 0x65, 0x6e, 0x65, 0x2e, 0x47, 0x61, 0x6d, 0x65, 0x41, 0x6e, 0x73, 0x77, 0x65, 0x72, 0x52,
	0x73, 0x70, 0x12, 0x4a, 0x0a, 0x08, 0x47, 0x61, 0x6d, 0x65, 0x4f, 0x76, 0x65, 0x72, 0x12, 0x1e,
	0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65,
	0x6e, 0x65, 0x2e, 0x47, 0x61, 0x6d, 0x65, 0x4f, 0x76, 0x65, 0x72, 0x52, 0x65, 0x71, 0x1a, 0x1e,
	0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65,
	0x6e, 0x65, 0x2e, 0x47, 0x61, 0x6d, 0x65, 0x4f, 0x76, 0x65, 0x72, 0x52, 0x73, 0x70, 0x42, 0x2c,
	0x5a, 0x2a, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61,
	0x6c, 0x6c, 0x65, 0x65, 0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70,
	0x63, 0x2f, 0x67, 0x61, 0x6d, 0x65, 0x5f, 0x73, 0x63, 0x65, 0x6e, 0x65, 0x62, 0x06, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x33,
}

var file_pb_grpc_game_scene_game_scene_proto_goTypes = []interface{}{
	(*pb_pub.HeartBeat)(nil),            // 0: pb_pub.HeartBeat
	(*game_scene.GameInviteReq)(nil),    // 1: pb_msg_game_scene.GameInviteReq
	(*game_scene.GameDisinviteReq)(nil), // 2: pb_msg_game_scene.GameDisinviteReq
	(*game_scene.GameAnswerReq)(nil),    // 3: pb_msg_game_scene.GameAnswerReq
	(*game_scene.GameOverReq)(nil),      // 4: pb_msg_game_scene.GameOverReq
	(*game_scene.GameInviteRsp)(nil),    // 5: pb_msg_game_scene.GameInviteRsp
	(*game_scene.GameDisinviteRsp)(nil), // 6: pb_msg_game_scene.GameDisinviteRsp
	(*game_scene.GameAnswerRsp)(nil),    // 7: pb_msg_game_scene.GameAnswerRsp
	(*game_scene.GameOverRsp)(nil),      // 8: pb_msg_game_scene.GameOverRsp
}
var file_pb_grpc_game_scene_game_scene_proto_depIdxs = []int32{
	0, // 0: pb_grpc_game_scene.GameScene.HeartBeat:input_type -> pb_pub.HeartBeat
	1, // 1: pb_grpc_game_scene.GameScene.GameInvite:input_type -> pb_msg_game_scene.GameInviteReq
	2, // 2: pb_grpc_game_scene.GameScene.GameDisinvite:input_type -> pb_msg_game_scene.GameDisinviteReq
	3, // 3: pb_grpc_game_scene.GameScene.GameAnswer:input_type -> pb_msg_game_scene.GameAnswerReq
	4, // 4: pb_grpc_game_scene.GameScene.GameOver:input_type -> pb_msg_game_scene.GameOverReq
	0, // 5: pb_grpc_game_scene.GameScene.HeartBeat:output_type -> pb_pub.HeartBeat
	5, // 6: pb_grpc_game_scene.GameScene.GameInvite:output_type -> pb_msg_game_scene.GameInviteRsp
	6, // 7: pb_grpc_game_scene.GameScene.GameDisinvite:output_type -> pb_msg_game_scene.GameDisinviteRsp
	7, // 8: pb_grpc_game_scene.GameScene.GameAnswer:output_type -> pb_msg_game_scene.GameAnswerRsp
	8, // 9: pb_grpc_game_scene.GameScene.GameOver:output_type -> pb_msg_game_scene.GameOverRsp
	5, // [5:10] is the sub-list for method output_type
	0, // [0:5] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_pb_grpc_game_scene_game_scene_proto_init() }
func file_pb_grpc_game_scene_game_scene_proto_init() {
	if File_pb_grpc_game_scene_game_scene_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pb_grpc_game_scene_game_scene_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   0,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_pb_grpc_game_scene_game_scene_proto_goTypes,
		DependencyIndexes: file_pb_grpc_game_scene_game_scene_proto_depIdxs,
	}.Build()
	File_pb_grpc_game_scene_game_scene_proto = out.File
	file_pb_grpc_game_scene_game_scene_proto_rawDesc = nil
	file_pb_grpc_game_scene_game_scene_proto_goTypes = nil
	file_pb_grpc_game_scene_game_scene_proto_depIdxs = nil
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConnInterface

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion6

// GameSceneClient is the client API for GameScene service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type GameSceneClient interface {
	HeartBeat(ctx context.Context, in *pb_pub.HeartBeat, opts ...grpc.CallOption) (*pb_pub.HeartBeat, error)
	GameInvite(ctx context.Context, in *game_scene.GameInviteReq, opts ...grpc.CallOption) (*game_scene.GameInviteRsp, error)
	GameDisinvite(ctx context.Context, in *game_scene.GameDisinviteReq, opts ...grpc.CallOption) (*game_scene.GameDisinviteRsp, error)
	GameAnswer(ctx context.Context, in *game_scene.GameAnswerReq, opts ...grpc.CallOption) (*game_scene.GameAnswerRsp, error)
	GameOver(ctx context.Context, in *game_scene.GameOverReq, opts ...grpc.CallOption) (*game_scene.GameOverRsp, error)
}

type gameSceneClient struct {
	cc grpc.ClientConnInterface
}

func NewGameSceneClient(cc grpc.ClientConnInterface) GameSceneClient {
	return &gameSceneClient{cc}
}

func (c *gameSceneClient) HeartBeat(ctx context.Context, in *pb_pub.HeartBeat, opts ...grpc.CallOption) (*pb_pub.HeartBeat, error) {
	out := new(pb_pub.HeartBeat)
	err := c.cc.Invoke(ctx, "/pb_grpc_game_scene.GameScene/HeartBeat", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *gameSceneClient) GameInvite(ctx context.Context, in *game_scene.GameInviteReq, opts ...grpc.CallOption) (*game_scene.GameInviteRsp, error) {
	out := new(game_scene.GameInviteRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_game_scene.GameScene/GameInvite", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *gameSceneClient) GameDisinvite(ctx context.Context, in *game_scene.GameDisinviteReq, opts ...grpc.CallOption) (*game_scene.GameDisinviteRsp, error) {
	out := new(game_scene.GameDisinviteRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_game_scene.GameScene/GameDisinvite", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *gameSceneClient) GameAnswer(ctx context.Context, in *game_scene.GameAnswerReq, opts ...grpc.CallOption) (*game_scene.GameAnswerRsp, error) {
	out := new(game_scene.GameAnswerRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_game_scene.GameScene/GameAnswer", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *gameSceneClient) GameOver(ctx context.Context, in *game_scene.GameOverReq, opts ...grpc.CallOption) (*game_scene.GameOverRsp, error) {
	out := new(game_scene.GameOverRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_game_scene.GameScene/GameOver", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// GameSceneServer is the server API for GameScene service.
type GameSceneServer interface {
	HeartBeat(context.Context, *pb_pub.HeartBeat) (*pb_pub.HeartBeat, error)
	GameInvite(context.Context, *game_scene.GameInviteReq) (*game_scene.GameInviteRsp, error)
	GameDisinvite(context.Context, *game_scene.GameDisinviteReq) (*game_scene.GameDisinviteRsp, error)
	GameAnswer(context.Context, *game_scene.GameAnswerReq) (*game_scene.GameAnswerRsp, error)
	GameOver(context.Context, *game_scene.GameOverReq) (*game_scene.GameOverRsp, error)
}

// UnimplementedGameSceneServer can be embedded to have forward compatible implementations.
type UnimplementedGameSceneServer struct {
}

func (*UnimplementedGameSceneServer) HeartBeat(context.Context, *pb_pub.HeartBeat) (*pb_pub.HeartBeat, error) {
	return nil, status.Errorf(codes.Unimplemented, "method HeartBeat not implemented")
}
func (*UnimplementedGameSceneServer) GameInvite(context.Context, *game_scene.GameInviteReq) (*game_scene.GameInviteRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GameInvite not implemented")
}
func (*UnimplementedGameSceneServer) GameDisinvite(context.Context, *game_scene.GameDisinviteReq) (*game_scene.GameDisinviteRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GameDisinvite not implemented")
}
func (*UnimplementedGameSceneServer) GameAnswer(context.Context, *game_scene.GameAnswerReq) (*game_scene.GameAnswerRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GameAnswer not implemented")
}
func (*UnimplementedGameSceneServer) GameOver(context.Context, *game_scene.GameOverReq) (*game_scene.GameOverRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GameOver not implemented")
}

func RegisterGameSceneServer(s *grpc.Server, srv GameSceneServer) {
	s.RegisterService(&_GameScene_serviceDesc, srv)
}

func _GameScene_HeartBeat_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(pb_pub.HeartBeat)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(GameSceneServer).HeartBeat(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_game_scene.GameScene/HeartBeat",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(GameSceneServer).HeartBeat(ctx, req.(*pb_pub.HeartBeat))
	}
	return interceptor(ctx, in, info, handler)
}

func _GameScene_GameInvite_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(game_scene.GameInviteReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(GameSceneServer).GameInvite(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_game_scene.GameScene/GameInvite",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(GameSceneServer).GameInvite(ctx, req.(*game_scene.GameInviteReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _GameScene_GameDisinvite_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(game_scene.GameDisinviteReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(GameSceneServer).GameDisinvite(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_game_scene.GameScene/GameDisinvite",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(GameSceneServer).GameDisinvite(ctx, req.(*game_scene.GameDisinviteReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _GameScene_GameAnswer_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(game_scene.GameAnswerReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(GameSceneServer).GameAnswer(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_game_scene.GameScene/GameAnswer",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(GameSceneServer).GameAnswer(ctx, req.(*game_scene.GameAnswerReq))
	}
	return interceptor(ctx, in, info, handler)
}

func _GameScene_GameOver_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(game_scene.GameOverReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(GameSceneServer).GameOver(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_game_scene.GameScene/GameOver",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(GameSceneServer).GameOver(ctx, req.(*game_scene.GameOverReq))
	}
	return interceptor(ctx, in, info, handler)
}

var _GameScene_serviceDesc = grpc.ServiceDesc{
	ServiceName: "pb_grpc_game_scene.GameScene",
	HandlerType: (*GameSceneServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "HeartBeat",
			Handler:    _GameScene_HeartBeat_Handler,
		},
		{
			MethodName: "GameInvite",
			Handler:    _GameScene_GameInvite_Handler,
		},
		{
			MethodName: "GameDisinvite",
			Handler:    _GameScene_GameDisinvite_Handler,
		},
		{
			MethodName: "GameAnswer",
			Handler:    _GameScene_GameAnswer_Handler,
		},
		{
			MethodName: "GameOver",
			Handler:    _GameScene_GameOver_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "pb_grpc/game_scene/game_scene.proto",
}
