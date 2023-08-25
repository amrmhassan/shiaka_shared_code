// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      userName: json['userName'] as String,
      email: json['email'] as String,
      address: json['address'] as String?,
      birthDate: _$JsonConverterFromJson<String, DateTime>(
          json['birthDate'], const DateTimeConverter().fromJson),
      location: _$JsonConverterFromJson<Map<String, dynamic>, LatLng>(
          json['location'], const LatLngConverted().fromJson),
      phone: json['phone'] as String,
      userGender: $enumDecode(_$UserGenderEnumMap, json['userGender']),
      userRole: $enumDecode(_$UserRoleEnumMap, json['userRole']),
      signupAt: const DateTimeConverter().fromJson(json['signupAt'] as String),
      userProfilePhoto: json['userProfilePhoto'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'address': instance.address,
      'location': _$JsonConverterToJson<Map<String, dynamic>, LatLng>(
          instance.location, const LatLngConverted().toJson),
      'phone': instance.phone,
      'userGender': _$UserGenderEnumMap[instance.userGender]!,
      'birthDate': _$JsonConverterToJson<String, DateTime>(
          instance.birthDate, const DateTimeConverter().toJson),
      'userRole': _$UserRoleEnumMap[instance.userRole]!,
      'signupAt': const DateTimeConverter().toJson(instance.signupAt),
      'userProfilePhoto': instance.userProfilePhoto,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$UserGenderEnumMap = {
  UserGender.male: 'male',
  UserGender.female: 'female',
};

const _$UserRoleEnumMap = {
  UserRole.trader: 'trader',
  UserRole.normal: 'normal',
  UserRole.delivery: 'delivery',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
