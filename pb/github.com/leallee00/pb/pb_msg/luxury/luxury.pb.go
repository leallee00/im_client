// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.33.0
// 	protoc        v5.27.3
// source: pb_msg/luxury/luxury.proto

package luxury

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

// 拍卖最高出价信息推送
type TopAuctionBidNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	GoodsId     int64   `protobuf:"varint,1,opt,name=goodsId,proto3" json:"goodsId,omitempty"` //商品id
	ShopId      int64   `protobuf:"varint,2,opt,name=shopId,proto3" json:"shopId,omitempty"`
	TopBidderId int64   `protobuf:"varint,3,opt,name=topBidderId,proto3" json:"topBidderId,omitempty"`  //最高有效出价者id
	TopBidPrice float64 `protobuf:"fixed64,4,opt,name=topBidPrice,proto3" json:"topBidPrice,omitempty"` //最高出价
}

func (x *TopAuctionBidNotify) Reset() {
	*x = TopAuctionBidNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_luxury_luxury_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *TopAuctionBidNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TopAuctionBidNotify) ProtoMessage() {}

func (x *TopAuctionBidNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_luxury_luxury_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use TopAuctionBidNotify.ProtoReflect.Descriptor instead.
func (*TopAuctionBidNotify) Descriptor() ([]byte, []int) {
	return file_pb_msg_luxury_luxury_proto_rawDescGZIP(), []int{0}
}

func (x *TopAuctionBidNotify) GetGoodsId() int64 {
	if x != nil {
		return x.GoodsId
	}
	return 0
}

func (x *TopAuctionBidNotify) GetShopId() int64 {
	if x != nil {
		return x.ShopId
	}
	return 0
}

func (x *TopAuctionBidNotify) GetTopBidderId() int64 {
	if x != nil {
		return x.TopBidderId
	}
	return 0
}

func (x *TopAuctionBidNotify) GetTopBidPrice() float64 {
	if x != nil {
		return x.TopBidPrice
	}
	return 0
}

// 拍卖出价信息推送
type AuctionBidNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	GoodsId   int64   `protobuf:"varint,1,opt,name=goodsId,proto3" json:"goodsId,omitempty"` //商品id
	ShopId    int64   `protobuf:"varint,2,opt,name=shopId,proto3" json:"shopId,omitempty"`
	BuyerName string  `protobuf:"bytes,3,opt,name=buyerName,proto3" json:"buyerName,omitempty"` //出价者
	BidPrice  float64 `protobuf:"fixed64,4,opt,name=bidPrice,proto3" json:"bidPrice,omitempty"` //价格
}

func (x *AuctionBidNotify) Reset() {
	*x = AuctionBidNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_luxury_luxury_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *AuctionBidNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*AuctionBidNotify) ProtoMessage() {}

func (x *AuctionBidNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_luxury_luxury_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use AuctionBidNotify.ProtoReflect.Descriptor instead.
func (*AuctionBidNotify) Descriptor() ([]byte, []int) {
	return file_pb_msg_luxury_luxury_proto_rawDescGZIP(), []int{1}
}

func (x *AuctionBidNotify) GetGoodsId() int64 {
	if x != nil {
		return x.GoodsId
	}
	return 0
}

func (x *AuctionBidNotify) GetShopId() int64 {
	if x != nil {
		return x.ShopId
	}
	return 0
}

func (x *AuctionBidNotify) GetBuyerName() string {
	if x != nil {
		return x.BuyerName
	}
	return ""
}

func (x *AuctionBidNotify) GetBidPrice() float64 {
	if x != nil {
		return x.BidPrice
	}
	return 0
}

// 商品上架推送
type GoodsOnShelfNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	GoodsId     int64   `protobuf:"varint,1,opt,name=goodsId,proto3" json:"goodsId,omitempty"`          //商品id
	CoverUrl    string  `protobuf:"bytes,2,opt,name=coverUrl,proto3" json:"coverUrl,omitempty"`         //封面url
	Name        string  `protobuf:"bytes,3,opt,name=name,proto3" json:"name,omitempty"`                 //名字
	Price       float64 `protobuf:"fixed64,4,opt,name=price,proto3" json:"price,omitempty"`             //一口价时该字段有效   价格
	SellType    int32   `protobuf:"varint,5,opt,name=sellType,proto3" json:"sellType,omitempty"`        //售卖类型 一口价：1，拍卖：2
	OpeningAsk  float64 `protobuf:"fixed64,6,opt,name=openingAsk,proto3" json:"openingAsk,omitempty"`   //拍卖时，该字段有效  起拍价
	BidStepSize float64 `protobuf:"fixed64,7,opt,name=bidStepSize,proto3" json:"bidStepSize,omitempty"` //拍卖时，该字段有效  拍卖每次加价数量
	ShopId      int64   `protobuf:"varint,8,opt,name=shopId,proto3" json:"shopId,omitempty"`            //商店id
}

func (x *GoodsOnShelfNotify) Reset() {
	*x = GoodsOnShelfNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_luxury_luxury_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GoodsOnShelfNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GoodsOnShelfNotify) ProtoMessage() {}

func (x *GoodsOnShelfNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_luxury_luxury_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GoodsOnShelfNotify.ProtoReflect.Descriptor instead.
func (*GoodsOnShelfNotify) Descriptor() ([]byte, []int) {
	return file_pb_msg_luxury_luxury_proto_rawDescGZIP(), []int{2}
}

func (x *GoodsOnShelfNotify) GetGoodsId() int64 {
	if x != nil {
		return x.GoodsId
	}
	return 0
}

func (x *GoodsOnShelfNotify) GetCoverUrl() string {
	if x != nil {
		return x.CoverUrl
	}
	return ""
}

func (x *GoodsOnShelfNotify) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *GoodsOnShelfNotify) GetPrice() float64 {
	if x != nil {
		return x.Price
	}
	return 0
}

func (x *GoodsOnShelfNotify) GetSellType() int32 {
	if x != nil {
		return x.SellType
	}
	return 0
}

func (x *GoodsOnShelfNotify) GetOpeningAsk() float64 {
	if x != nil {
		return x.OpeningAsk
	}
	return 0
}

func (x *GoodsOnShelfNotify) GetBidStepSize() float64 {
	if x != nil {
		return x.BidStepSize
	}
	return 0
}

func (x *GoodsOnShelfNotify) GetShopId() int64 {
	if x != nil {
		return x.ShopId
	}
	return 0
}

// 商品下架推送
type GoodsOffShelfNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	GoodsId int64 `protobuf:"varint,1,opt,name=goodsId,proto3" json:"goodsId,omitempty"` //商品id
	ShopId  int64 `protobuf:"varint,2,opt,name=shopId,proto3" json:"shopId,omitempty"`   //商店id
}

func (x *GoodsOffShelfNotify) Reset() {
	*x = GoodsOffShelfNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_luxury_luxury_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GoodsOffShelfNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GoodsOffShelfNotify) ProtoMessage() {}

func (x *GoodsOffShelfNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_luxury_luxury_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GoodsOffShelfNotify.ProtoReflect.Descriptor instead.
func (*GoodsOffShelfNotify) Descriptor() ([]byte, []int) {
	return file_pb_msg_luxury_luxury_proto_rawDescGZIP(), []int{3}
}

func (x *GoodsOffShelfNotify) GetGoodsId() int64 {
	if x != nil {
		return x.GoodsId
	}
	return 0
}

func (x *GoodsOffShelfNotify) GetShopId() int64 {
	if x != nil {
		return x.ShopId
	}
	return 0
}

// 买家购买消息推送
type BuyNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	BuyerName string `protobuf:"bytes,1,opt,name=buyerName,proto3" json:"buyerName,omitempty"` //买家名字
	GoodsName string `protobuf:"bytes,2,opt,name=goodsName,proto3" json:"goodsName,omitempty"` //商品名字
	ShopId    int64  `protobuf:"varint,3,opt,name=shopId,proto3" json:"shopId,omitempty"`      //商店id
}

func (x *BuyNotify) Reset() {
	*x = BuyNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_luxury_luxury_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *BuyNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*BuyNotify) ProtoMessage() {}

func (x *BuyNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_luxury_luxury_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use BuyNotify.ProtoReflect.Descriptor instead.
func (*BuyNotify) Descriptor() ([]byte, []int) {
	return file_pb_msg_luxury_luxury_proto_rawDescGZIP(), []int{4}
}

func (x *BuyNotify) GetBuyerName() string {
	if x != nil {
		return x.BuyerName
	}
	return ""
}

func (x *BuyNotify) GetGoodsName() string {
	if x != nil {
		return x.GoodsName
	}
	return ""
}

func (x *BuyNotify) GetShopId() int64 {
	if x != nil {
		return x.ShopId
	}
	return 0
}

// 集市买家付款成功消息推送
type B2CPickUpPayResultNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	SystemOrderId string `protobuf:"bytes,1,opt,name=systemOrderId,proto3" json:"systemOrderId,omitempty"` //订单id
	Success       bool   `protobuf:"varint,2,opt,name=success,proto3" json:"success,omitempty"`            //是否成功
}

func (x *B2CPickUpPayResultNotify) Reset() {
	*x = B2CPickUpPayResultNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_luxury_luxury_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *B2CPickUpPayResultNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*B2CPickUpPayResultNotify) ProtoMessage() {}

func (x *B2CPickUpPayResultNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_luxury_luxury_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use B2CPickUpPayResultNotify.ProtoReflect.Descriptor instead.
func (*B2CPickUpPayResultNotify) Descriptor() ([]byte, []int) {
	return file_pb_msg_luxury_luxury_proto_rawDescGZIP(), []int{5}
}

func (x *B2CPickUpPayResultNotify) GetSystemOrderId() string {
	if x != nil {
		return x.SystemOrderId
	}
	return ""
}

func (x *B2CPickUpPayResultNotify) GetSuccess() bool {
	if x != nil {
		return x.Success
	}
	return false
}

// 集市买家核销成功消息推送
type B2CApplyResultNotify struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	SystemOrderId string `protobuf:"bytes,1,opt,name=systemOrderId,proto3" json:"systemOrderId,omitempty"` //订单id
	Success       bool   `protobuf:"varint,2,opt,name=success,proto3" json:"success,omitempty"`            //是否成功
}

func (x *B2CApplyResultNotify) Reset() {
	*x = B2CApplyResultNotify{}
	if protoimpl.UnsafeEnabled {
		mi := &file_pb_msg_luxury_luxury_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *B2CApplyResultNotify) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*B2CApplyResultNotify) ProtoMessage() {}

func (x *B2CApplyResultNotify) ProtoReflect() protoreflect.Message {
	mi := &file_pb_msg_luxury_luxury_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use B2CApplyResultNotify.ProtoReflect.Descriptor instead.
func (*B2CApplyResultNotify) Descriptor() ([]byte, []int) {
	return file_pb_msg_luxury_luxury_proto_rawDescGZIP(), []int{6}
}

func (x *B2CApplyResultNotify) GetSystemOrderId() string {
	if x != nil {
		return x.SystemOrderId
	}
	return ""
}

func (x *B2CApplyResultNotify) GetSuccess() bool {
	if x != nil {
		return x.Success
	}
	return false
}

var File_pb_msg_luxury_luxury_proto protoreflect.FileDescriptor

var file_pb_msg_luxury_luxury_proto_rawDesc = []byte{
	0x0a, 0x1a, 0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f, 0x6c, 0x75, 0x78, 0x75, 0x72, 0x79, 0x2f,
	0x6c, 0x75, 0x78, 0x75, 0x72, 0x79, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x12, 0x0d, 0x70, 0x62,
	0x5f, 0x6d, 0x73, 0x67, 0x5f, 0x6c, 0x75, 0x78, 0x75, 0x72, 0x79, 0x22, 0x8b, 0x01, 0x0a, 0x13,
	0x54, 0x6f, 0x70, 0x41, 0x75, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x42, 0x69, 0x64, 0x4e, 0x6f, 0x74,
	0x69, 0x66, 0x79, 0x12, 0x18, 0x0a, 0x07, 0x67, 0x6f, 0x6f, 0x64, 0x73, 0x49, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x03, 0x52, 0x07, 0x67, 0x6f, 0x6f, 0x64, 0x73, 0x49, 0x64, 0x12, 0x16, 0x0a,
	0x06, 0x73, 0x68, 0x6f, 0x70, 0x49, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06, 0x73,
	0x68, 0x6f, 0x70, 0x49, 0x64, 0x12, 0x20, 0x0a, 0x0b, 0x74, 0x6f, 0x70, 0x42, 0x69, 0x64, 0x64,
	0x65, 0x72, 0x49, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x03, 0x52, 0x0b, 0x74, 0x6f, 0x70, 0x42,
	0x69, 0x64, 0x64, 0x65, 0x72, 0x49, 0x64, 0x12, 0x20, 0x0a, 0x0b, 0x74, 0x6f, 0x70, 0x42, 0x69,
	0x64, 0x50, 0x72, 0x69, 0x63, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x01, 0x52, 0x0b, 0x74, 0x6f,
	0x70, 0x42, 0x69, 0x64, 0x50, 0x72, 0x69, 0x63, 0x65, 0x22, 0x7e, 0x0a, 0x10, 0x41, 0x75, 0x63,
	0x74, 0x69, 0x6f, 0x6e, 0x42, 0x69, 0x64, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79, 0x12, 0x18, 0x0a,
	0x07, 0x67, 0x6f, 0x6f, 0x64, 0x73, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x03, 0x52, 0x07,
	0x67, 0x6f, 0x6f, 0x64, 0x73, 0x49, 0x64, 0x12, 0x16, 0x0a, 0x06, 0x73, 0x68, 0x6f, 0x70, 0x49,
	0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06, 0x73, 0x68, 0x6f, 0x70, 0x49, 0x64, 0x12,
	0x1c, 0x0a, 0x09, 0x62, 0x75, 0x79, 0x65, 0x72, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x09, 0x62, 0x75, 0x79, 0x65, 0x72, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1a, 0x0a,
	0x08, 0x62, 0x69, 0x64, 0x50, 0x72, 0x69, 0x63, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x01, 0x52,
	0x08, 0x62, 0x69, 0x64, 0x50, 0x72, 0x69, 0x63, 0x65, 0x22, 0xea, 0x01, 0x0a, 0x12, 0x47, 0x6f,
	0x6f, 0x64, 0x73, 0x4f, 0x6e, 0x53, 0x68, 0x65, 0x6c, 0x66, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79,
	0x12, 0x18, 0x0a, 0x07, 0x67, 0x6f, 0x6f, 0x64, 0x73, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28,
	0x03, 0x52, 0x07, 0x67, 0x6f, 0x6f, 0x64, 0x73, 0x49, 0x64, 0x12, 0x1a, 0x0a, 0x08, 0x63, 0x6f,
	0x76, 0x65, 0x72, 0x55, 0x72, 0x6c, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x63, 0x6f,
	0x76, 0x65, 0x72, 0x55, 0x72, 0x6c, 0x12, 0x12, 0x0a, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x18, 0x03,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12, 0x14, 0x0a, 0x05, 0x70, 0x72,
	0x69, 0x63, 0x65, 0x18, 0x04, 0x20, 0x01, 0x28, 0x01, 0x52, 0x05, 0x70, 0x72, 0x69, 0x63, 0x65,
	0x12, 0x1a, 0x0a, 0x08, 0x73, 0x65, 0x6c, 0x6c, 0x54, 0x79, 0x70, 0x65, 0x18, 0x05, 0x20, 0x01,
	0x28, 0x05, 0x52, 0x08, 0x73, 0x65, 0x6c, 0x6c, 0x54, 0x79, 0x70, 0x65, 0x12, 0x1e, 0x0a, 0x0a,
	0x6f, 0x70, 0x65, 0x6e, 0x69, 0x6e, 0x67, 0x41, 0x73, 0x6b, 0x18, 0x06, 0x20, 0x01, 0x28, 0x01,
	0x52, 0x0a, 0x6f, 0x70, 0x65, 0x6e, 0x69, 0x6e, 0x67, 0x41, 0x73, 0x6b, 0x12, 0x20, 0x0a, 0x0b,
	0x62, 0x69, 0x64, 0x53, 0x74, 0x65, 0x70, 0x53, 0x69, 0x7a, 0x65, 0x18, 0x07, 0x20, 0x01, 0x28,
	0x01, 0x52, 0x0b, 0x62, 0x69, 0x64, 0x53, 0x74, 0x65, 0x70, 0x53, 0x69, 0x7a, 0x65, 0x12, 0x16,
	0x0a, 0x06, 0x73, 0x68, 0x6f, 0x70, 0x49, 0x64, 0x18, 0x08, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06,
	0x73, 0x68, 0x6f, 0x70, 0x49, 0x64, 0x22, 0x47, 0x0a, 0x13, 0x47, 0x6f, 0x6f, 0x64, 0x73, 0x4f,
	0x66, 0x66, 0x53, 0x68, 0x65, 0x6c, 0x66, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79, 0x12, 0x18, 0x0a,
	0x07, 0x67, 0x6f, 0x6f, 0x64, 0x73, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x03, 0x52, 0x07,
	0x67, 0x6f, 0x6f, 0x64, 0x73, 0x49, 0x64, 0x12, 0x16, 0x0a, 0x06, 0x73, 0x68, 0x6f, 0x70, 0x49,
	0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06, 0x73, 0x68, 0x6f, 0x70, 0x49, 0x64, 0x22,
	0x5f, 0x0a, 0x09, 0x42, 0x75, 0x79, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79, 0x12, 0x1c, 0x0a, 0x09,
	0x62, 0x75, 0x79, 0x65, 0x72, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52,
	0x09, 0x62, 0x75, 0x79, 0x65, 0x72, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1c, 0x0a, 0x09, 0x67, 0x6f,
	0x6f, 0x64, 0x73, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x67,
	0x6f, 0x6f, 0x64, 0x73, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x16, 0x0a, 0x06, 0x73, 0x68, 0x6f, 0x70,
	0x49, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06, 0x73, 0x68, 0x6f, 0x70, 0x49, 0x64,
	0x22, 0x5a, 0x0a, 0x18, 0x42, 0x32, 0x43, 0x50, 0x69, 0x63, 0x6b, 0x55, 0x70, 0x50, 0x61, 0x79,
	0x52, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x4e, 0x6f, 0x74, 0x69, 0x66, 0x79, 0x12, 0x24, 0x0a, 0x0d,
	0x73, 0x79, 0x73, 0x74, 0x65, 0x6d, 0x4f, 0x72, 0x64, 0x65, 0x72, 0x49, 0x64, 0x18, 0x01, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x0d, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6d, 0x4f, 0x72, 0x64, 0x65, 0x72,
	0x49, 0x64, 0x12, 0x18, 0x0a, 0x07, 0x73, 0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x18, 0x02, 0x20,
	0x01, 0x28, 0x08, 0x52, 0x07, 0x73, 0x75, 0x63, 0x63, 0x65, 0x73, 0x73, 0x22, 0x56, 0x0a, 0x14,
	0x42, 0x32, 0x43, 0x41, 0x70, 0x70, 0x6c, 0x79, 0x52, 0x65, 0x73, 0x75, 0x6c, 0x74, 0x4e, 0x6f,
	0x74, 0x69, 0x66, 0x79, 0x12, 0x24, 0x0a, 0x0d, 0x73, 0x79, 0x73, 0x74, 0x65, 0x6d, 0x4f, 0x72,
	0x64, 0x65, 0x72, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0d, 0x73, 0x79, 0x73,
	0x74, 0x65, 0x6d, 0x4f, 0x72, 0x64, 0x65, 0x72, 0x49, 0x64, 0x12, 0x18, 0x0a, 0x07, 0x73, 0x75,
	0x63, 0x63, 0x65, 0x73, 0x73, 0x18, 0x02, 0x20, 0x01, 0x28, 0x08, 0x52, 0x07, 0x73, 0x75, 0x63,
	0x63, 0x65, 0x73, 0x73, 0x42, 0x27, 0x5a, 0x25, 0x67, 0x69, 0x74, 0x68, 0x75, 0x62, 0x2e, 0x63,
	0x6f, 0x6d, 0x2f, 0x6c, 0x65, 0x61, 0x6c, 0x6c, 0x65, 0x65, 0x30, 0x30, 0x2f, 0x70, 0x62, 0x2f,
	0x70, 0x62, 0x5f, 0x6d, 0x73, 0x67, 0x2f, 0x6c, 0x75, 0x78, 0x75, 0x72, 0x79, 0x62, 0x06, 0x70,
	0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_pb_msg_luxury_luxury_proto_rawDescOnce sync.Once
	file_pb_msg_luxury_luxury_proto_rawDescData = file_pb_msg_luxury_luxury_proto_rawDesc
)

func file_pb_msg_luxury_luxury_proto_rawDescGZIP() []byte {
	file_pb_msg_luxury_luxury_proto_rawDescOnce.Do(func() {
		file_pb_msg_luxury_luxury_proto_rawDescData = protoimpl.X.CompressGZIP(file_pb_msg_luxury_luxury_proto_rawDescData)
	})
	return file_pb_msg_luxury_luxury_proto_rawDescData
}

var file_pb_msg_luxury_luxury_proto_msgTypes = make([]protoimpl.MessageInfo, 7)
var file_pb_msg_luxury_luxury_proto_goTypes = []interface{}{
	(*TopAuctionBidNotify)(nil),      // 0: pb_msg_luxury.TopAuctionBidNotify
	(*AuctionBidNotify)(nil),         // 1: pb_msg_luxury.AuctionBidNotify
	(*GoodsOnShelfNotify)(nil),       // 2: pb_msg_luxury.GoodsOnShelfNotify
	(*GoodsOffShelfNotify)(nil),      // 3: pb_msg_luxury.GoodsOffShelfNotify
	(*BuyNotify)(nil),                // 4: pb_msg_luxury.BuyNotify
	(*B2CPickUpPayResultNotify)(nil), // 5: pb_msg_luxury.B2CPickUpPayResultNotify
	(*B2CApplyResultNotify)(nil),     // 6: pb_msg_luxury.B2CApplyResultNotify
}
var file_pb_msg_luxury_luxury_proto_depIdxs = []int32{
	0, // [0:0] is the sub-list for method output_type
	0, // [0:0] is the sub-list for method input_type
	0, // [0:0] is the sub-list for extension type_name
	0, // [0:0] is the sub-list for extension extendee
	0, // [0:0] is the sub-list for field type_name
}

func init() { file_pb_msg_luxury_luxury_proto_init() }
func file_pb_msg_luxury_luxury_proto_init() {
	if File_pb_msg_luxury_luxury_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_pb_msg_luxury_luxury_proto_msgTypes[0].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*TopAuctionBidNotify); i {
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
		file_pb_msg_luxury_luxury_proto_msgTypes[1].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*AuctionBidNotify); i {
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
		file_pb_msg_luxury_luxury_proto_msgTypes[2].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GoodsOnShelfNotify); i {
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
		file_pb_msg_luxury_luxury_proto_msgTypes[3].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*GoodsOffShelfNotify); i {
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
		file_pb_msg_luxury_luxury_proto_msgTypes[4].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*BuyNotify); i {
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
		file_pb_msg_luxury_luxury_proto_msgTypes[5].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*B2CPickUpPayResultNotify); i {
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
		file_pb_msg_luxury_luxury_proto_msgTypes[6].Exporter = func(v interface{}, i int) interface{} {
			switch v := v.(*B2CApplyResultNotify); i {
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
			RawDescriptor: file_pb_msg_luxury_luxury_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   7,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_pb_msg_luxury_luxury_proto_goTypes,
		DependencyIndexes: file_pb_msg_luxury_luxury_proto_depIdxs,
		MessageInfos:      file_pb_msg_luxury_luxury_proto_msgTypes,
	}.Build()
	File_pb_msg_luxury_luxury_proto = out.File
	file_pb_msg_luxury_luxury_proto_rawDesc = nil
	file_pb_msg_luxury_luxury_proto_goTypes = nil
	file_pb_msg_luxury_luxury_proto_depIdxs = nil
}