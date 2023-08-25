// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) => StoreModel(
      id: json['id'] as String,
      coverImagePath: json['coverImagePath'] as String,
      followers: json['followers'] as int,
      name: json['name'] as String,
      creatorUserUID: json['creatorUserUID'] as String,
      phones:
          (json['phones'] as List<dynamic>).map((e) => e as String).toList(),
      emails:
          (json['emails'] as List<dynamic>).map((e) => e as String).toList(),
      address: json['address'] as String?,
      logoImagePath: json['logoImagePath'] as String?,
      location: _$JsonConverterFromJson<Map<String, dynamic>, LatLng>(
          json['location'], const LatLngConverted().fromJson),
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => KeyWordModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      distance: (json['distance'] as num?)?.toDouble(),
      desc: json['desc'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      storeTabs: (json['storeTabs'] as List<dynamic>?)
              ?.map((e) => StoreTabModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          defaultStoreTabs,
    )..offers = (json['offers'] as List<dynamic>?)
        ?.map((e) => OfferModel.fromJson(e as Map<String, dynamic>))
        .toList();

Map<String, dynamic> _$StoreModelToJson(StoreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logoImagePath': instance.logoImagePath,
      'coverImagePath': instance.coverImagePath,
      'followers': instance.followers,
      'rating': instance.rating,
      'storeTabs': instance.storeTabs.map((e) => e.toJson()).toList(),
      'phones': instance.phones,
      'emails': instance.emails,
      'address': instance.address,
      'keywords': instance.keywords?.map((e) => e.toJson()).toList(),
      'desc': instance.desc,
      'offers': instance.offers?.map((e) => e.toJson()).toList(),
      'location': _$JsonConverterToJson<Map<String, dynamic>, LatLng>(
          instance.location, const LatLngConverted().toJson),
      'distance': instance.distance,
      'creatorUserUID': instance.creatorUserUID,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
