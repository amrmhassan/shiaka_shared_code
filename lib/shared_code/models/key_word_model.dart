import 'package:json_annotation/json_annotation.dart';
part 'key_word_model.g.dart';

@JsonSerializable(explicitToJson: true)
class KeyWordModel {
  final String id;
  final String title;

  const KeyWordModel({
    required this.id,
    required this.title,
  });

  factory KeyWordModel.fromJson(Map<String, dynamic> json) =>
      _$KeyWordModelFromJson(json);
  Map<String, dynamic> toJson() => _$KeyWordModelToJson(this);
}
