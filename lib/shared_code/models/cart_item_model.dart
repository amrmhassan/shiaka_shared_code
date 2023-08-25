import 'package:json_annotation/json_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cart_item_model.g.dart';

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 0)
class CartItemModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  final String productId;
  @HiveField(2)
  final String productImage;
  @HiveField(3)
  final String productName;
  @HiveField(4)
  final double productPrice;
  @HiveField(5)
  final String createdAt;
  @HiveField(6)
  final String? size;
  @HiveField(7)
  final int? color;
  @HiveField(8)
  final String storeOwnerId;
  @HiveField(9)
  final String storeId;
  @HiveField(10)
  bool selected;
  @HiveField(11)
  int quantity;

  CartItemModel({
    required this.id,
    required this.productId,
    required this.quantity,
    required this.createdAt,
    required this.storeId,
    this.size,
    this.color,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    this.selected = true,
    required this.storeOwnerId,
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$CartItemModelToJson(this);
}
