import 'package:json_annotation/json_annotation.dart';

part 'store_tab_model.g.dart';

@JsonSerializable(explicitToJson: true)
class StoreTabModel {
  final String id;
  String title;
  final List<String> productsIds;
  final bool allProducts;

  StoreTabModel({
    required this.id,
    required this.productsIds,
    required this.title,
    this.allProducts = false,
  });

  factory StoreTabModel.fromJson(Map<String, dynamic> json) =>
      _$StoreTabModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreTabModelToJson(this);
}
