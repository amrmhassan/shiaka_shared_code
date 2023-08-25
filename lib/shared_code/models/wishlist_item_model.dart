import 'package:json_annotation/json_annotation.dart';
import '../constants/modelsConstants.dart';
import './offer_model.dart';

import '../constants/db_constants.dart';

part 'wishlist_item_model.g.dart';

@JsonSerializable()
@DateTimeConverter()
class WishListItemModel {
  final String id;
  final String productId;
  String wishListId;
  String? note;
  final DateTime createdAt;

  WishListItemModel({
    required this.id,
    required this.createdAt,
    required this.productId,
    required this.wishListId,
    this.note,
  });

  factory WishListItemModel.fromJson(Map<String, dynamic> json) =>
      _$WishListItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$WishListItemModelToJson(this);

  static String toSqliteString() {
    return 'CREATE TABLE $wishlistItemsTableName ($idString TEXT PRIMARY KEY,$productIdString TEXT,$wishListIdString TEXT,$noteString TEXT,$createdAtString TEXT)';
  }
}
