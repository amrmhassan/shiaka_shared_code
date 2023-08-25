import 'package:json_annotation/json_annotation.dart';
import './offer_model.dart';
part 'ads_model.g.dart';

@JsonSerializable(explicitToJson: true)
@DateTimeConverter()
class AdsModel {
  final String id;
  final DateTime createdAt;
  final DateTime endDate;
  final String productName;
  final String productId;
  final String imagePath;
  final String storeId;
  final String? storeLogo;
  final String storeName;

  const AdsModel({
    required this.id,
    required this.createdAt,
    required this.endDate,
    required this.imagePath,
    required this.productName,
    required this.productId,
    required this.storeId,
    required this.storeLogo,
    required this.storeName,
  });

  factory AdsModel.fromJson(Map<String, dynamic> json) =>
      _$AdsModelFromJson(json);
  Map<String, dynamic> toJson() => _$AdsModelToJson(this);
}
