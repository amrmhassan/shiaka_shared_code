// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdsModel _$AdsModelFromJson(Map<String, dynamic> json) => AdsModel(
      id: json['id'] as String,
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
      endDate: const DateTimeConverter().fromJson(json['endDate'] as String),
      imagePath: json['imagePath'] as String,
      productName: json['productName'] as String,
      productId: json['productId'] as String,
      storeId: json['storeId'] as String,
      storeLogo: json['storeLogo'] as String?,
      storeName: json['storeName'] as String,
    );

Map<String, dynamic> _$AdsModelToJson(AdsModel instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'endDate': const DateTimeConverter().toJson(instance.endDate),
      'productName': instance.productName,
      'productId': instance.productId,
      'imagePath': instance.imagePath,
      'storeId': instance.storeId,
      'storeLogo': instance.storeLogo,
      'storeName': instance.storeName,
    };
