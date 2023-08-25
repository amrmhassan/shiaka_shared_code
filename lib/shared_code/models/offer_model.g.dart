// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) => OfferModel(
      id: json['id'] as String,
      imagePath: json['imagePath'] as String,
      title: json['title'] as String,
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
      endAt: const DateTimeConverter().fromJson(json['endAt'] as String),
      productId: json['productId'] as String,
      storeId: json['storeId'] as String,
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      productName: json['productName'] as String,
    )..active = json['active'] as bool;

Map<String, dynamic> _$OfferModelToJson(OfferModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imagePath': instance.imagePath,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'endAt': const DateTimeConverter().toJson(instance.endAt),
      'active': instance.active,
      'productId': instance.productId,
      'storeId': instance.storeId,
      'discountPercentage': instance.discountPercentage,
      'productName': instance.productName,
    };
