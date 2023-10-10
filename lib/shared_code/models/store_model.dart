import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import '../constants/store_constants.dart';
import 'key_word_model.dart';
import 'offer_model.dart';
import 'store_tab_model.dart';
part 'store_model.g.dart';

@JsonSerializable(explicitToJson: true)
@LatLngConverted()
class StoreModel {
  final String id;
  String name;
  String? logoImagePath;
  String coverImagePath;
  int followers;
  final double? rating;
  late List<StoreTabModel> storeTabs;
  final List<String> phones;
  final List<String> emails;
  final String? address;

  List<KeyWordModel>? keywords;

  String? desc;
  List<OfferModel>? offers;
  final LatLng? location;
  double? distance;
  String creatorUserUID;

  StoreModel({
    required this.id,
    required this.coverImagePath,
    required this.followers,
    required this.name,
    required this.creatorUserUID,
    required this.phones,
    required this.emails,
    List<StoreTabModel>? tabsParam,
    this.address,
    this.logoImagePath,
    this.location,
    this.keywords,
    this.distance,
    this.desc,
    this.rating,
  }) {
    storeTabs = tabsParam ?? defaultStoreTabs;
  }

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
  Map<String, dynamic> toJson() => _$StoreModelToJson(this);
}

class LatLngConverted extends JsonConverter<LatLng, Map<String, dynamic>> {
  const LatLngConverted();
  @override
  LatLng fromJson(Map<String, dynamic> json) {
    return LatLng(json['lat'], json['lng']);
  }

  @override
  Map<String, dynamic> toJson(LatLng object) {
    return {
      'lat': object.latitude,
      'lng': object.longitude,
    };
  }
}
