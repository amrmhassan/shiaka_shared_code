import 'package:json_annotation/json_annotation.dart';

import '../constants/db_constants.dart';
import '../constants/modelsConstants.dart';

part 'error_logger_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ErrorLoggerModel {
  final String id;
  final String message;
  final String error;
  final String stackTrace;
  final String date;

  const ErrorLoggerModel({
    required this.id,
    required this.message,
    required this.error,
    required this.stackTrace,
    required this.date,
  });

  factory ErrorLoggerModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorLoggerModelFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorLoggerModelToJson(this);

  static String toSqliteString() {
    return 'CREATE TABLE $errorsLoggerTableName ($idString TEXT PRIMARY KEY, $messageString TEXT, $errorString TEXT, $stackTraceString TEXT, $dateString TEXT)';
  }
}
