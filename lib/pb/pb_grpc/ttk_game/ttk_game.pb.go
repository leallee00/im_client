// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_grpc/ttk_game/ttk_game.proto

package ttk_game

import (
	context "context"
	ttk_game "github.com/leallee00/pb/pb_msg/ttk_game"
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

var File_pb_grpc_ttk_game_ttk_game_proto protoreflect.FileDescriptor

var file_pb_grpc_ttk_game_ttk_game_proto_rawDesc = []byte{
	0x0a, 0x1f, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x74, 0x74, 0x6b, 0x5f, 0x67, 0x61,
	0x6d, 0x65, 0x2f, 0x74, 0x74, 0x6b, 0x5f, 0x67, 0x61, 0x6d, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x12, 0x10, 0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x5f, 0x74, 0x74, 0x6b, 0x5f, 0x67,
	0x61, 0x6d, 0x65, 0x1a, 0x1e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f, 0x74, 0x74, 0x6b, 0x5f,
	0x67, 0x61, 0x6d, 0x65, 0x2f, 0x74, 0x74, 0x6b, 0x5f, 0x67, 0x61, 0x6d, 0x65, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x32, 0x5f, 0x0a, 0x07, 0x54, 0x54, 0x4b, 0x47, 0x61, 0x6d, 0x65, 0x12, 0x54,
	0x0a, 0x0c, 0x54, 0x54, 0x4b, 0x47, 0x61, 0x6d, 0x65, 0x53, 0x74, 0x61, 0x74, 0x65, 0x12, 0x20,
	0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x74, 0x74, 0x6b, 0x5f, 0x67, 0x61, 0x6d, 0x65,
	0x2e, 0x54, 0x54, 0x4b, 0x47, 0x61, 0x6d, 0x65, 0x53, 0x74, 0x61, 0x74, 0x65, 0x52, 0x65, 0x71,
	0x1a, 0x20, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x74, 0x74, 0x6b, 0x5f, 0x67, 0x61,
	0x6d, 0x65, 0x2e, 0x54, 0x54, 0x4b, 0x47, 0x61, 0x6d, 0x65, 0x53, 0x74, 0x61, 0x74, 0x65, 0x52,
	0x73, 0x70, 0x22, 0x00, 0x42, 0x2a, 0x5a, 0x28, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63,
	0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61, 0x6c, 0x6c, 0x65, 0x65, 0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f,
	0x70, 0x62, 0x5f, 0x67, 0x72, 0x70, 0x63, 0x2f, 0x74, 0x74, 0x6b, 0x5f, 0x67, 0x61, 0x6d, 0x65,
	0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var file_pb_grpc_ttk_game_ttk_game_proto_goTypes = []interface{}{
	(*ttk_game.TTKGameStateReq)(nil), // 0: pb_msg_ttk_game.TTKGameStateReq
	(*ttk_game.TTKGameStateRsp)(nil), // 1: pb_msg_ttk_game.TTKGameStateRsp
}
var file_pb_grpc_ttk_game_ttk_game_proto_depIdxs = []int32{
	0, // 0: pb_grpc_ttk_game.TTKGame.TTKGameState:input_type -> pb_msg_ttk_game.TTKGameStateReq
	1, // 1: pb_grpc_ttk_game.TTKGame.TTKGameState:output_type -> pb_msg_ttk_game.TTKGameStateRsp
	1, // [1:2] is the sub-list for method output_type
	0, // [0:1] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_pb_grpc_ttk_game_ttk_game_proto_init() }
func file_pb_grpc_ttk_game_ttk_game_proto_init() {
	if File_pb_grpc_ttk_game_ttk_game_proto != nil {
		return
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_pb_grpc_ttk_game_ttk_game_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   0,
			NumExtensions: 0,
			NumServices:   1,
		},
		GoTypes:           file_pb_grpc_ttk_game_ttk_game_proto_goTypes,
		DependencyIndexes: file_pb_grpc_ttk_game_ttk_game_proto_depIdxs,
	}.Build()
	File_pb_grpc_ttk_game_ttk_game_proto = out.File
	file_pb_grpc_ttk_game_ttk_game_proto_rawDesc = nil
	file_pb_grpc_ttk_game_ttk_game_proto_goTypes = nil
	file_pb_grpc_ttk_game_ttk_game_proto_depIdxs = nil
}

// Reference imports to suppress errors if they are not otherwise used.
var _ context.Context
var _ grpc.ClientConnInterface

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
const _ = grpc.SupportPackageIsVersion6

// TTKGameClient is the client API for TTKGame service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://godoc.org/google.golang.org/grpc#ClientConn.NewStream.
type TTKGameClient interface {
	TTKGameState(ctx context.Context, in *ttk_game.TTKGameStateReq, opts ...grpc.CallOption) (*ttk_game.TTKGameStateRsp, error)
}

type tTKGameClient struct {
	cc grpc.ClientConnInterface
}

func NewTTKGameClient(cc grpc.ClientConnInterface) TTKGameClient {
	return &tTKGameClient{cc}
}

func (c *tTKGameClient) TTKGameState(ctx context.Context, in *ttk_game.TTKGameStateReq, opts ...grpc.CallOption) (*ttk_game.TTKGameStateRsp, error) {
	out := new(ttk_game.TTKGameStateRsp)
	err := c.cc.Invoke(ctx, "/pb_grpc_ttk_game.TTKGame/TTKGameState", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// TTKGameServer is the server API for TTKGame service.
type TTKGameServer interface {
	TTKGameState(context.Context, *ttk_game.TTKGameStateReq) (*ttk_game.TTKGameStateRsp, error)
}

// UnimplementedTTKGameServer can be embedded to have forward compatible implementations.
type UnimplementedTTKGameServer struct {
}

func (*UnimplementedTTKGameServer) TTKGameState(context.Context, *ttk_game.TTKGameStateReq) (*ttk_game.TTKGameStateRsp, error) {
	return nil, status.Errorf(codes.Unimplemented, "method TTKGameState not implemented")
}

func RegisterTTKGameServer(s *grpc.Server, srv TTKGameServer) {
	s.RegisterService(&_TTKGame_serviceDesc, srv)
}

func _TTKGame_TTKGameState_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ttk_game.TTKGameStateReq)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(TTKGameServer).TTKGameState(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/pb_grpc_ttk_game.TTKGame/TTKGameState",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(TTKGameServer).TTKGameState(ctx, req.(*ttk_game.TTKGameStateReq))
	}
	return interceptor(ctx, in, info, handler)
}

var _TTKGame_serviceDesc = grpc.ServiceDesc{
	ServiceName: "pb_grpc_ttk_game.TTKGame",
	HandlerType: (*TTKGameServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "TTKGameState",
			Handler:    _TTKGame_TTKGameState_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "pb_grpc/ttk_game/ttk_game.proto",
}
