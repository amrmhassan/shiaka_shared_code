// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartItemModelAdapter extends TypeAdapter<CartItemModel> {
  @override
  final int typeId = 0;

  @override
  CartItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartItemModel(
      id: fields[0] as String,
      productId: fields[1] as String,
      quantity: fields[11] as int,
      createdAt: fields[5] as String,
      storeId: fields[9] as String,
      size: fields[6] as String?,
      color: fields[7] as int?,
      productImage: fields[2] as String,
      productName: fields[3] as String,
      productPrice: fields[4] as double,
      selected: fields[10] as bool,
      storeOwnerId: fields[8] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CartItemModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.productId)
      ..writeByte(2)
      ..write(obj.productImage)
      ..writeByte(3)
      ..write(obj.productName)
      ..writeByte(4)
      ..write(obj.productPrice)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.size)
      ..writeByte(7)
      ..write(obj.color)
      ..writeByte(8)
      ..write(obj.storeOwnerId)
      ..writeByte(9)
      ..write(obj.storeId)
      ..writeByte(10)
      ..write(obj.selected)
      ..writeByte(11)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    CartItemModel(
      id: json['id'] as String,
      productId: json['productId'] as String,
      quantity: json['quantity'] as int,
      createdAt: json['createdAt'] as String,
      storeId: json['storeId'] as String,
      size: json['size'] as String?,
      color: json['color'] as int?,
      productImage: json['productImage'] as String,
      productName: json['productName'] as String,
      productPrice: (json['productPrice'] as num).toDouble(),
      selected: json['selected'] as bool? ?? true,
      storeOwnerId: json['storeOwnerId'] as String,
    );

Map<String, dynamic> _$CartItemModelToJson(CartItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'productImage': instance.productImage,
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'createdAt': instance.createdAt,
      'size': instance.size,
      'color': instance.color,
      'storeOwnerId': instance.storeOwnerId,
      'storeId': instance.storeId,
      'selected': instance.selected,
      'quantity': instance.quantity,
    };
