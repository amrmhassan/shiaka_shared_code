import 'package:json_annotation/json_annotation.dart';

part 'brand_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BrandModel {
  final String id;
  final String name;
  final String? icon;

  const BrandModel({
    required this.id,
    required this.name,
    this.icon,
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) =>
      _$BrandModelFromJson(json);
  Map<String, dynamic> toJson() => _$BrandModelToJson(this);
}
