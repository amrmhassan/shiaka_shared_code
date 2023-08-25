import 'package:json_annotation/json_annotation.dart';
import 'package:shared_code/shared_code/constants/modelsConstants.dart';
import './offer_model.dart';

import '../constants/db_constants.dart';

part 'whishlist_model.g.dart';

@JsonSerializable()
@DateTimeConverter()
class WishListModel {
  final String id;
  final String name;
  final DateTime createdAt;

  const WishListModel({
    required this.id,
    required this.name,
    required this.createdAt,
  });

  factory WishListModel.fromJson(Map<String, dynamic> json) =>
      _$WishListModelFromJson(json);
  Map<String, dynamic> toJson() => _$WishListModelToJson(this);

  static String toSqliteString() {
    return 'CREATE TABLE $wishlistsTableName ($idString TEXT PRIMARY KEY, $nameString TEXT, $createdAtString TEXT)';
  }
}
