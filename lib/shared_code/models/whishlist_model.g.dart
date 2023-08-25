// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whishlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishListModel _$WishListModelFromJson(Map<String, dynamic> json) =>
    WishListModel(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
    );

Map<String, dynamic> _$WishListModelToJson(WishListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
    };
