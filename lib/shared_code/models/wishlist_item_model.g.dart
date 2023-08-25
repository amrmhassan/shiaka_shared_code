// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wishlist_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishListItemModel _$WishListItemModelFromJson(Map<String, dynamic> json) =>
    WishListItemModel(
      id: json['id'] as String,
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
      productId: json['productId'] as String,
      wishListId: json['wishListId'] as String,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$WishListItemModelToJson(WishListItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'wishListId': instance.wishListId,
      'note': instance.note,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };
