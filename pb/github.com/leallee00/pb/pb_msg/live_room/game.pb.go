// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_msg/live_room/game.proto

package live_room

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

type UCGameInfo struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Judge          *UCGamePlayer `protobuf:"bytes,1,opt,name=judge,proto3" json:"judge,omitempty"`
	UndercoverSide *UCGameSide   `protobuf:"bytes,2,opt,name=undercoverSide,proto3" json:"undercoverSide,omitempty"`
	PopulaceSide   *UCGameSide   `protobuf:"bytes,3,opt,name=populaceSide,proto3" json:"populaceSide,omitempty"`
}

func (x *UCGameInfo) Reset() {
	*x = UCGameInfo{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_live_room_game_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UCGameInfo) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UCGameInfo) ProtoMessage() {}

func (x *UCGameInfo) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_live_room_game_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UCGameInfo.ProtoReflect.Descriptor instead.
func (*UCGameInfo) Descriptor() ([]byte, []int) {
	return file_pb_msg_live_room_game_proto_rawDescGZIP(), []int{0}
}

func (x *UCGameInfo) GetJudge() *UCGamePlayer {
	if x != nil {
		return x.Judge
	}
	return nil
}

func (x *UCGameInfo) GetUndercoverSide() *UCGameSide {
	if x != nil {
		return x.UndercoverSide
	}
	return nil
}

func (x *UCGameInfo) GetPopulaceSide() *UCGameSide {
	if x != nil {
		return x.PopulaceSide
	}
	return nil
}

type UCGameSide struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Word    string          `protobuf:"bytes,1,opt,name=word,proto3" json:"word,omitempty"`
	Players []*UCGamePlayer `protobuf:"bytes,2,rep,name=players,proto3" json:"players,omitempty"`
}

func (x *UCGameSide) Reset() {
	*x = UCGameSide{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_live_room_game_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UCGameSide) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UCGameSide) ProtoMessage() {}

func (x *UCGameSide) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_live_room_game_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UCGameSide.ProtoReflect.Descriptor instead.
func (*UCGameSide) Descriptor() ([]byte, []int) {
	return file_pb_msg_live_room_game_proto_rawDescGZIP(), []int{1}
}

func (x *UCGameSide) GetWord() string {
	if x != nil {
		return x.Word
	}
	return ""
}

func (x *UCGameSide) GetPlayers() []*UCGamePlayer {
	if x != nil {
		return x.Players
	}
	return nil
}

type UCGamePlayer struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserId    int64  `protobuf:"varint,1,opt,name=userId,proto3" json:"userId,omitempty"`      // 玩家ID
	Username  string `protobuf:"bytes,2,opt,name=username,proto3" json:"username,omitempty"`   // 玩家名称
	HeadImage string `protobuf:"bytes,3,opt,name=headImage,proto3" json:"headImage,omitempty"` // 玩家头像
}

func (x *UCGamePlayer) Reset() {
	*x = UCGamePlayer{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_live_room_game_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UCGamePlayer) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UCGamePlayer) ProtoMessage() {}

func (x *UCGamePlayer) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_live_room_game_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UCGamePlayer.ProtoReflect.Descriptor instead.
func (*UCGamePlayer) Descriptor() ([]byte, []int) {
	return file_pb_msg_live_room_game_proto_rawDescGZIP(), []int{2}
}

func (x *UCGamePlayer) GetUserId() int64 {
	if x != nil {
		return x.UserId
	}
	return 0
}

func (x *UCGamePlayer) GetUsername() string {
	if x != nil {
		return x.Username
	}
	return ""
}

func (x *UCGamePlayer) GetHeadImage() string {
	if x != nil {
		return x.HeadImage
	}
	return ""
}

// 开始游戏请求响应
// srcid:创建者(需在主持位) aimid:房间id
type UCGameStartReq struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	// int32 mode = 1; // 游戏模式 !=1:随机出题  ==1:自己出题
	UndercoverWord  string `protobuf:"bytes,1,opt,name=undercoverWord,proto3" json:"undercoverWord,omitempty"`    // 卧底词
	PopulaceWord    string `protobuf:"bytes,2,opt,name=populaceWord,proto3" json:"populaceWord,omitempty"`        // 平民词
	UndercoverCount int32  `protobuf:"varint,3,opt,name=undercoverCount,proto3" json:"undercoverCount,omitempty"` // 卧底个数
}

func (x *UCGameStartReq) Reset() {
	*x = UCGameStartReq{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_live_room_game_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UCGameStartReq) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UCGameStartReq) ProtoMessage() {}

func (x *UCGameStartReq) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_live_room_game_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UCGameStartReq.ProtoReflect.Descriptor instead.
func (*UCGameStartReq) Descriptor() ([]byte, []int) {
	return file_pb_msg_live_room_game_proto_rawDescGZIP(), []int{3}
}

func (x *UCGameStartReq) GetUndercoverWord() string {
	if x != nil {
		return x.UndercoverWord
	}
	return ""
}

func (x *UCGameStartReq) GetPopulaceWord() string {
	if x != nil {
		return x.PopulaceWord
	}
	return ""
}

func (x *UCGameStartReq) GetUndercoverCount() int32 {
	if x != nil {
		return x.UndercoverCount
	}
	return 0
}

type UCGameStartRsp struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	GameInfo *UCGameInfo `protobuf:"bytes,1,opt,name=gameInfo,proto3" json:"gameInfo,omitempty"` // 游戏信息
}

func (x *UCGameStartRsp) Reset() {
	*x = UCGameStartRsp{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_live_room_game_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UCGameStartRsp) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UCGameStartRsp) ProtoMessage() {}

func (x *UCGameStartRsp) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_live_room_game_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UCGameStartRsp.ProtoReflect.Descriptor instead.
func (*UCGameStartRsp) Descriptor() ([]byte, []int) {
	return file_pb_msg_live_room_game_proto_rawDescGZIP(), []int{4}
}

func (x *UCGameStartRsp) GetGameInfo() *UCGameInfo {
	if x != nil {
		return x.GameInfo
	}
	return nil
}

// 游戏创建完成IM单发给玩家
// 玩家场景恢复会发(进场)
type UCGamePlayerInfo struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Word string `protobuf:"bytes,1,opt,name=word,proto3" json:"word,omitempty"`
}

func (x *UCGamePlayerInfo) Reset() {
	*x = UCGamePlayerInfo{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_live_room_game_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UCGamePlayerInfo) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UCGamePlayerInfo) ProtoMessage() {}

func (x *UCGamePlayerInfo) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_live_room_game_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UCGamePlayerInfo.ProtoReflect.Descriptor instead.
func (*UCGamePlayerInfo) Descriptor() ([]byte, []int) {
	return file_pb_msg_live_room_game_proto_rawDescGZIP(), []int{5}
}

func (x *UCGamePlayerInfo) GetWord() string {
	if x != nil {
		return x.Word
	}
	return ""
}

// 游戏创建完成IM广播到全房间
type UCGameStartNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UndercoverCount int32 `protobuf:"varint,1,opt,name=undercoverCount,proto3" json:"undercoverCount,omitempty"`
	PopulaceCount   int32 `protobuf:"varint,2,opt,name=populaceCount,proto3" json:"populaceCount,omitempty"`
}

func (x *UCGameStartNotify) Reset() {
	*x = UCGameStartNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_live_room_game_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UCGameStartNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UCGameStartNotify) ProtoMessage() {}

func (x *UCGameStartNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_live_room_game_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UCGameStartNotify.ProtoReflect.Descriptor instead.
func (*UCGameStartNotify) Descriptor() ([]byte, []int) {
	return file_pb_msg_live_room_game_proto_rawDescGZIP(), []int{6}
}

func (x *UCGameStartNotify) GetUndercoverCount() int32 {
	if x != nil {
		return x.UndercoverCount
	}
	return 0
}

func (x *UCGameStartNotify) GetPopulaceCount() int32 {
	if x != nil {
		return x.PopulaceCount
	}
	return 0
}

// 客户端发IM转发给全房间, 客户端可不填gameInfo字段
// srcid:操作者 (在主持位,是法官) aimid:房间id
type UCGameOverNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	GameInfo *UCGameInfo `protobuf:"bytes,1,opt,name=gameInfo,proto3" json:"gameInfo,omitempty"` // 游戏信息
	Winner   int32       `protobuf:"varint,2,opt,name=winner,proto3" json:"winner,omitempty"`    // ==0:平局 ==1:平民胜利 ==2卧底胜利
}

func (x *UCGameOverNotify) Reset() {
	*x = UCGameOverNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_live_room_game_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UCGameOverNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UCGameOverNotify) ProtoMessage() {}

func (x *UCGameOverNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_live_room_game_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UCGameOverNotify.ProtoReflect.Descriptor instead.
func (*UCGameOverNotify) Descriptor() ([]byte, []int) {
	return file_pb_msg_live_room_game_proto_rawDescGZIP(), []int{7}
}

func (x *UCGameOverNotify) GetGameInfo() *UCGameInfo {
	if x != nil {
		return x.GameInfo
	}
	return nil
}

func (x *UCGameOverNotify) GetWinner() int32 {
	if x != nil {
		return x.Winner
	}
	return 0
}

// 普通观众进场收到的消息
type UCGamePlayers struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Players []int64 `protobuf:"varint,1,rep,packed,name=players,proto3" json:"players,omitempty"` // 正在游戏的用户列表
}

func (x *UCGamePlayers) Reset() {
	*x = UCGamePlayers{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_live_room_game_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *UCGamePlayers) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*UCGamePlayers) ProtoMessage() {}

func (x *UCGamePlayers) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_live_room_game_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use UCGamePlayers.ProtoReflect.Descriptor instead.
func (*UCGamePlayers) Descriptor() ([]byte, []int) {
	return file_pb_msg_live_room_game_proto_rawDescGZIP(), []int{8}
}

func (x *UCGamePlayers) GetPlayers() []int64 {
	if x != nil {
		return x.Players
	}
	return nil
}

var File_pb_msg_live_room_game_proto protoreflect.FileDescriptor

var file_pb_msg_live_room_game_proto_rawDesc = []byte{
	0x0a, 0x1b, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f, 0x6c, 0x69, 0x76, 0x65, 0x5f, 0x72, 0x6f,
	0x6f, 0x6d, 0x2f, 0x67, 0x61, 0x6d, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x10, 0x70,
	0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6c, 0x69, 0x76, 0x65, 0x5f, 0x72, 0x6f, 0x6f, 0x6d, 0x22,
	0xca, 0x01, 0x0a, 0x0a, 0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x49, 0x6e, 0x66, 0x6f, 0x12, 0x34,
	0x0a, 0x05, 0x6a, 0x75, 0x64, 0x67, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1e, 0x2e,
	0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6c, 0x69, 0x76, 0x65, 0x5f, 0x72, 0x6f, 0x6f, 0x6d,
	0x2e, 0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x50, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x52, 0x05, 0x6a,
	0x75, 0x64, 0x67, 0x65, 0x12, 0x44, 0x0a, 0x0e, 0x75, 0x6e, 0x64, 0x65, 0x72, 0x63, 0x6f, 0x76,
	0x65, 0x72, 0x53, 0x69, 0x64, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1c, 0x2e, 0x70,
	0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6c, 0x69, 0x76, 0x65, 0x5f, 0x72, 0x6f, 0x6f, 0x6d, 0x2e,
	0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x53, 0x69, 0x64, 0x65, 0x52, 0x0e, 0x75, 0x6e, 0x64, 0x65,
	0x72, 0x63, 0x6f, 0x76, 0x65, 0x72, 0x53, 0x69, 0x64, 0x65, 0x12, 0x40, 0x0a, 0x0c, 0x70, 0x6f,
	0x70, 0x75, 0x6c, 0x61, 0x63, 0x65, 0x53, 0x69, 0x64, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x1c, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6c, 0x69, 0x76, 0x65, 0x5f, 0x72,
	0x6f, 0x6f, 0x6d, 0x2e, 0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x53, 0x69, 0x64, 0x65, 0x52, 0x0c,
	0x70, 0x6f, 0x70, 0x75, 0x6c, 0x61, 0x63, 0x65, 0x53, 0x69, 0x64, 0x65, 0x22, 0x5a, 0x0a, 0x0a,
	0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x53, 0x69, 0x64, 0x65, 0x12, 0x12, 0x0a, 0x04, 0x77, 0x6f,
	0x72, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x77, 0x6f, 0x72, 0x64, 0x12, 0x38,
	0x0a, 0x07, 0x70, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x73, 0x18, 0x02, 0x20, 0x03, 0x28, 0x0b, 0x32,
	0x1e, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6c, 0x69, 0x76, 0x65, 0x5f, 0x72, 0x6f,
	0x6f, 0x6d, 0x2e, 0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x50, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x52,
	0x07, 0x70, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x73, 0x22, 0x60, 0x0a, 0x0c, 0x55, 0x43, 0x47, 0x61,
	0x6d, 0x65, 0x50, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x12, 0x16, 0x0a, 0x06, 0x75, 0x73, 0x65, 0x72,
	0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64,
	0x12, 0x1a, 0x0a, 0x08, 0x75, 0x73, 0x65, 0x72, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x08, 0x75, 0x73, 0x65, 0x72, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x1c, 0x0a, 0x09,
	0x68, 0x65, 0x61, 0x64, 0x49, 0x6d, 0x61, 0x67, 0x65, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x09, 0x68, 0x65, 0x61, 0x64, 0x49, 0x6d, 0x61, 0x67, 0x65, 0x22, 0x86, 0x01, 0x0a, 0x0e, 0x55,
	0x43, 0x47, 0x61, 0x6d, 0x65, 0x53, 0x74, 0x61, 0x72, 0x74, 0x52, 0x65, 0x71, 0x12, 0x26, 0x0a,
	0x0e, 0x75, 0x6e, 0x64, 0x65, 0x72, 0x63, 0x6f, 0x76, 0x65, 0x72, 0x57, 0x6f, 0x72, 0x64, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0e, 0x75, 0x6e, 0x64, 0x65, 0x72, 0x63, 0x6f, 0x76, 0x65,
	0x72, 0x57, 0x6f, 0x72, 0x64, 0x12, 0x22, 0x0a, 0x0c, 0x70, 0x6f, 0x70, 0x75, 0x6c, 0x61, 0x63,
	0x65, 0x57, 0x6f, 0x72, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0c, 0x70, 0x6f, 0x70,
	0x75, 0x6c, 0x61, 0x63, 0x65, 0x57, 0x6f, 0x72, 0x64, 0x12, 0x28, 0x0a, 0x0f, 0x75, 0x6e, 0x64,
	0x65, 0x72, 0x63, 0x6f, 0x76, 0x65, 0x72, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x05, 0x52, 0x0f, 0x75, 0x6e, 0x64, 0x65, 0x72, 0x63, 0x6f, 0x76, 0x65, 0x72, 0x43, 0x6f,
	0x75, 0x6e, 0x74, 0x22, 0x4a, 0x0a, 0x0e, 0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x53, 0x74, 0x61,
	0x72, 0x74, 0x52, 0x73, 0x70, 0x12, 0x38, 0x0a, 0x08, 0x67, 0x61, 0x6d, 0x65, 0x49, 0x6e, 0x66,
	0x6f, 0x18, 0x01, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1c, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67,
	0x5f, 0x6c, 0x69, 0x76, 0x65, 0x5f, 0x72, 0x6f, 0x6f, 0x6d, 0x2e, 0x55, 0x43, 0x47, 0x61, 0x6d,
	0x65, 0x49, 0x6e, 0x66, 0x6f, 0x52, 0x08, 0x67, 0x61, 0x6d, 0x65, 0x49, 0x6e, 0x66, 0x6f, 0x22,
	0x26, 0x0a, 0x10, 0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x50, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x49,
	0x6e, 0x66, 0x6f, 0x12, 0x12, 0x0a, 0x04, 0x77, 0x6f, 0x72, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x04, 0x77, 0x6f, 0x72, 0x64, 0x22, 0x63, 0x0a, 0x11, 0x55, 0x43, 0x47, 0x61, 0x6d,
	0x65, 0x53, 0x74, 0x61, 0x72, 0x74, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79, 0x12, 0x28, 0x0a, 0x0f,
	0x75, 0x6e, 0x64, 0x65, 0x72, 0x63, 0x6f, 0x76, 0x65, 0x72, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0f, 0x75, 0x6e, 0x64, 0x65, 0x72, 0x63, 0x6f, 0x76, 0x65,
	0x72, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x24, 0x0a, 0x0d, 0x70, 0x6f, 0x70, 0x75, 0x6c, 0x61,
	0x63, 0x65, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x0d, 0x70,
	0x6f, 0x70, 0x75, 0x6c, 0x61, 0x63, 0x65, 0x43, 0x6f, 0x75, 0x6e, 0x74, 0x22, 0x64, 0x0a, 0x10,
	0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x4f, 0x76, 0x65, 0x72, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79,
	0x12, 0x38, 0x0a, 0x08, 0x67, 0x61, 0x6d, 0x65, 0x49, 0x6e, 0x66, 0x6f, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x0b, 0x32, 0x1c, 0x2e, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6c, 0x69, 0x76, 0x65,
	0x5f, 0x72, 0x6f, 0x6f, 0x6d, 0x2e, 0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x49, 0x6e, 0x66, 0x6f,
	0x52, 0x08, 0x67, 0x61, 0x6d, 0x65, 0x49, 0x6e, 0x66, 0x6f, 0x12, 0x16, 0x0a, 0x06, 0x77, 0x69,
	0x6e, 0x6e, 0x65, 0x72, 0x18, 0x02, 0x20, 0x01, 0x28, 0x05, 0x52, 0x06, 0x77, 0x69, 0x6e, 0x6e,
	0x65, 0x72, 0x22, 0x29, 0x0a, 0x0d, 0x55, 0x43, 0x47, 0x61, 0x6d, 0x65, 0x50, 0x6c, 0x61, 0x79,
	0x65, 0x72, 0x73, 0x12, 0x18, 0x0a, 0x07, 0x70, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x73, 0x18, 0x01,
	0x20, 0x03, 0x28, 0x03, 0x52, 0x07, 0x70, 0x6c, 0x61, 0x79, 0x65, 0x72, 0x73, 0x42, 0x2a, 0x5a,
	0x28, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63, 0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61, 0x6c,
	0x6c, 0x65, 0x65, 0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f,
	0x6c, 0x69, 0x76, 0x65, 0x5f, 0x72, 0x6f, 0x6f, 0x6d, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x33,
}

var (
	file_pb_msg_live_room_game_proto_rawDescOnce sync.Once
	file_pb_msg_live_room_game_proto_rawDescData = file_pb_msg_live_room_game_proto_rawDesc
)

func file_pb_msg_live_room_game_proto_rawDescGZIP() []byte {
	file_pb_msg_live_room_game_proto_rawDescOnce.Do(func() {
		file_pb_msg_live_room_game_proto_rawDescData = protoimpl.X.CompressGZIP(file_pb_msg_live_room_game_proto_rawDescData)
	})
	return file_pb_msg_live_room_game_proto_rawDescData
}

var file_pb_msg_live_room_game_proto_msgTypes = make([]protoimpl.MessageInfo, 9)
var file_pb_msg_live_room_game_proto_goTypes = []interface{}{
	(*UCGameInfo)(nil),        // 0: pb_msg_live_room.UCGameInfo
	(*UCGameSide)(nil),        // 1: pb_msg_live_room.UCGameSide
	(*UCGamePlayer)(nil),      // 2: pb_msg_live_room.UCGamePlayer
	(*UCGameStartReq)(nil),    // 3: pb_msg_live_room.UCGameStartReq
	(*UCGameStartRsp)(nil),    // 4: pb_msg_live_room.UCGameStartRsp
	(*UCGamePlayerInfo)(nil),  // 5: pb_msg_live_room.UCGamePlayerInfo
	(*UCGameStartNotify)(nil), // 6: pb_msg_live_room.UCGameStartNotify
	(*UCGameOverNotify)(nil),  // 7: pb_msg_live_room.UCGameOverNotify
	(*UCGamePlayers)(nil),     // 8: pb_msg_live_room.UCGamePlayers
}
var file_pb_msg_live_room_game_proto_depIdxs = []int32{
	2, // 0: pb_msg_live_room.UCGameInfo.judge:type_name -> pb_msg_live_room.UCGamePlayer
	1, // 1: pb_msg_live_room.UCGameInfo.undercoverSide:type_name -> pb_msg_live_room.UCGameSide
	1, // 2: pb_msg_live_room.UCGameInfo.populaceSide:type_name -> pb_msg_live_room.UCGameSide
	2, // 3: pb_msg_live_room.UCGameSide.players:type_name -> pb_msg_live_room.UCGamePlayer
	0, // 4: pb_msg_live_room.UCGameStartRsp.gameInfo:type_name -> pb_msg_live_room.UCGameInfo
	0, // 5: pb_msg_live_room.UCGameOverNotify.gameInfo:type_name -> pb_msg_live_room.UCGameInfo
	6, // [6:6] is the sub-list for method output_type
	6, // [6:6] is the sub-list for method input_type
	6, // [6:6] is the sub-list for extension type_name
	6, // [6:6] is the sub-list for extension extendee
	0, // [0:6] is the sub-list for field type_name
}

func init() { file_pb_msg_live_room_game_proto_init() }
func file_pb_msg_live_room_game_proto_init() {
	if File_pb_msg_live_room_game_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_pb_msg_live_room_game_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UCGameInfo); i {
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
		file_pb_msg_live_room_game_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UCGameSide); i {
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
		file_pb_msg_live_room_game_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UCGamePlayer); i {
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
		file_pb_msg_live_room_game_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UCGameStartReq); i {
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
		file_pb_msg_live_room_game_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UCGameStartRsp); i {
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
		file_pb_msg_live_room_game_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UCGamePlayerInfo); i {
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
		file_pb_msg_live_room_game_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UCGameStartNotify); i {
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
		file_pb_msg_live_room_game_proto_msgTypes[7].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UCGameOverNotify); i {
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
		file_pb_msg_live_room_game_proto_msgTypes[8].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*UCGamePlayers); i {
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
			RawDescriptor: file_pb_msg_live_room_game_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   9,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_pb_msg_live_room_game_proto_goTypes,
		DependencyIndexes: file_pb_msg_live_room_game_proto_depIdxs,
		MessageInfos:      file_pb_msg_live_room_game_proto_msgTypes,
	}.Build()
	File_pb_msg_live_room_game_proto = out.File
	file_pb_msg_live_room_game_proto_rawDesc = nil
	file_pb_msg_live_room_game_proto_goTypes = nil
	file_pb_msg_live_room_game_proto_depIdxs = nil
}
