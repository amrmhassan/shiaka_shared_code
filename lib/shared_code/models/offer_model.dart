import 'package:json_annotation/json_annotation.dart';

part 'offer_model.g.dart';

@JsonSerializable(explicitToJson: true)
@DateTimeConverter()
class OfferModel {
  final String id;
  final String title;
  final String imagePath;
  final DateTime createdAt;
  final DateTime endAt;
  late bool active;
  final String productId;
  final String storeId;
  final double discountPercentage;
  final String productName;

  OfferModel({
    required this.id,
    required this.imagePath,
    required this.title,
    required this.createdAt,
    required this.endAt,
    required this.productId,
    required this.storeId,
    required this.discountPercentage,
    required this.productName,
  }) {
    active = endAt.isAfter(DateTime.now());
  }

  factory OfferModel.fromJson(Map<String, dynamic> json) =>
      _$OfferModelFromJson(json);
  Map<String, dynamic> toJson() => _$OfferModelToJson(this);
}

class DateTimeConverter extends JsonConverter<DateTime, String> {
  const DateTimeConverter();
  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json);
  }

  @override
  String toJson(DateTime object) {
    return object.toIso8601String();
  }
}
