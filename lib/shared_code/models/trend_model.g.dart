// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendModel _$TrendModelFromJson(Map<String, dynamic> json) => TrendModel(
      createdAt:
          const DateTimeConverter().fromJson(json['createdAt'] as String),
      endAt: const DateTimeConverter().fromJson(json['endAt'] as String),
      id: json['id'] as String,
      productId: json['productId'] as String,
    );

Map<String, dynamic> _$TrendModelToJson(TrendModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'endAt': const DateTimeConverter().toJson(instance.endAt),
    };
