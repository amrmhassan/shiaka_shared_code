import 'package:json_annotation/json_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CategoryModel {
  final String id;
  final String title;
  final String icon;
  final String categoryGenderId;
  final bool allOfGender;

  const CategoryModel({
    required this.id,
    required this.icon,
    required this.title,
    required this.categoryGenderId,
    this.allOfGender = false,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
