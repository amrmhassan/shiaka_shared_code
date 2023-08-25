// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      storeId: json['storeId'] as String,
      storeName: json['storeName'] as String,
      imagesPath: (json['imagesPath'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lovesNumber: json['lovesNumber'] as int,
      price: (json['price'] as num).toDouble(),
      storeLogo: json['storeLogo'] as String?,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      brand: json['brand'] == null
          ? null
          : BrandModel.fromJson(json['brand'] as Map<String, dynamic>),
      availableSize: (json['availableSize'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nOfComments: json['nOfComments'] as int?,
      rating: (json['rating'] as num?)?.toDouble(),
      remainingNumber: json['remainingNumber'] as int?,
      offerId: json['offerId'] as String?,
      fullDesc: json['fullDesc'] as String?,
      shortDesc: json['shortDesc'] as String?,
      availableColors: (json['availableColors'] as List<dynamic>?)
          ?.map((e) => const ColorConverter().fromJson(e as int))
          .toList(),
      categoryId: json['categoryId'] as String?,
      genderCategoryId: json['genderCategoryId'] as String?,
    )
      ..offerEnd = json['offerEnd'] == null
          ? null
          : DateTime.parse(json['offerEnd'] as String)
      ..offerStarted = json['offerStarted'] == null
          ? null
          : DateTime.parse(json['offerStarted'] as String)
      ..discount = (json['discount'] as num?)?.toDouble();

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'storeId': instance.storeId,
      'storeName': instance.storeName,
      'storeLogo': instance.storeLogo,
      'imagesPath': instance.imagesPath,
      'lovesNumber': instance.lovesNumber,
      'price': instance.price,
      'keywords': instance.keywords,
      'brand': instance.brand?.toJson(),
      'availableSize': instance.availableSize,
      'availableColors':
          instance.availableColors?.map(const ColorConverter().toJson).toList(),
      'nOfComments': instance.nOfComments,
      'rating': instance.rating,
      'remainingNumber': instance.remainingNumber,
      'createdAt': instance.createdAt.toIso8601String(),
      'fullDesc': instance.fullDesc,
      'shortDesc': instance.shortDesc,
      'offerId': instance.offerId,
      'categoryId': instance.categoryId,
      'genderCategoryId': instance.genderCategoryId,
      'offerEnd': instance.offerEnd?.toIso8601String(),
      'offerStarted': instance.offerStarted?.toIso8601String(),
      'discount': instance.discount,
    };
