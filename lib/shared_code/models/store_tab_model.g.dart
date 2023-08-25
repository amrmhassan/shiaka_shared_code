// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_tab_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreTabModel _$StoreTabModelFromJson(Map<String, dynamic> json) =>
    StoreTabModel(
      id: json['id'] as String,
      productsIds: (json['productsIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      title: json['title'] as String,
      allProducts: json['allProducts'] as bool? ?? false,
    );

Map<String, dynamic> _$StoreTabModelToJson(StoreTabModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'productsIds': instance.productsIds,
      'allProducts': instance.allProducts,
    };
