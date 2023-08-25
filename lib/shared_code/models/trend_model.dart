import 'package:json_annotation/json_annotation.dart';

import 'offer_model.dart';
part 'trend_model.g.dart';

@JsonSerializable(explicitToJson: true)
@DateTimeConverter()
class TrendModel {
  final String id;
  final String productId;
  final DateTime createdAt;
  final DateTime endAt;

  const TrendModel({
    required this.createdAt,
    required this.endAt,
    required this.id,
    required this.productId,
  });

  factory TrendModel.fromJson(Map<String, dynamic> json) =>
      _$TrendModelFromJson(json);
  Map<String, dynamic> toJson() => _$TrendModelToJson(this);
}
