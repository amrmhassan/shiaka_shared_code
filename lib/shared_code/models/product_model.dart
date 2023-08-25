import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'brand_model.dart';

part 'product_model.g.dart';

@JsonSerializable(explicitToJson: true)
@ColorConverter()
class ProductModel {
  String id;
  String name;
  String storeId;
  String storeName;
  String? storeLogo;
  List<String> imagesPath;
  int lovesNumber;
  double price;
  List<String>? keywords;
  BrandModel? brand;
  List<String>? availableSize;
  List<Color>? availableColors;
  int? nOfComments;
  double? rating;
  int? remainingNumber;
  DateTime createdAt;
  String? fullDesc;
  String? shortDesc;
  String? offerId;
  String? categoryId;
  String? genderCategoryId;
  DateTime? offerEnd;
  DateTime? offerStarted;
  double? discount;

  ProductModel({
    required this.id,
    required this.name,
    required this.storeId,
    required this.storeName,
    required this.imagesPath,
    required this.createdAt,
    required this.lovesNumber,
    required this.price,
    this.storeLogo,
    this.keywords,
    this.brand,
    this.availableSize,
    this.nOfComments,
    this.rating,
    this.remainingNumber,
    this.offerId,
    this.fullDesc,
    this.shortDesc,
    this.availableColors,
    this.categoryId,
    this.genderCategoryId,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  bool get validOffer {
    if (offerId == null || offerEnd == null) return false;
    DateTime now = DateTime.now();
    DateTime end = offerEnd!;
    Duration diff = end.difference(now);
    return !diff.isNegative;
  }
}

class ColorConverter extends JsonConverter<Color, int> {
  const ColorConverter();
  @override
  Color fromJson(int json) {
    return Color(json);
  }

  @override
  int toJson(Color object) {
    return object.value;
  }
}
