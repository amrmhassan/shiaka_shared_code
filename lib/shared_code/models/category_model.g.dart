// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      id: json['id'] as String,
      icon: json['icon'] as String,
      title: json['title'] as String,
      categoryGenderId: json['categoryGenderId'] as String,
      allOfGender: json['allOfGender'] as bool? ?? false,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'icon': instance.icon,
      'categoryGenderId': instance.categoryGenderId,
      'allOfGender': instance.allOfGender,
    };
