import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:json_annotation/json_annotation.dart';
import './offer_model.dart';
import './store_model.dart';
import 'types.dart';

part 'user_model.g.dart';

@JsonSerializable(explicitToJson: true)
@DateTimeConverter()
@LatLngConverted()
class UserModel {
  final String id;
  String userName;
  final String email;
  final String? address;
  final LatLng? location;
  String phone;
  final UserGender userGender;
  final DateTime? birthDate;
  final UserRole userRole;
  final DateTime signupAt;
  String? userProfilePhoto;

  UserModel({
    required this.id,
    required this.userName,
    required this.email,
    required this.address,
    required this.birthDate,
    required this.location,
    required this.phone,
    required this.userGender,
    required this.userRole,
    required this.signupAt,
    required this.userProfilePhoto,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  String get firstName => userName.split(' ').first;
}
