// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_logger_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorLoggerModel _$ErrorLoggerModelFromJson(Map<String, dynamic> json) =>
    ErrorLoggerModel(
      id: json['id'] as String,
      message: json['message'] as String,
      error: json['error'] as String,
      stackTrace: json['stackTrace'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$ErrorLoggerModelToJson(ErrorLoggerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'error': instance.error,
      'stackTrace': instance.stackTrace,
      'date': instance.date,
    };
