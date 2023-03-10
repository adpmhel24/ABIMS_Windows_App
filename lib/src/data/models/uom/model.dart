import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class UoMModel {
  int? id;

  String code;

  String? description;

  UoMModel({
    this.id,
    required this.code,
    this.description,
  });

  factory UoMModel.fromJson(Map<String, dynamic> json) =>
      _$UoMModelFromJson(json);

  Map<String, dynamic> toJson() => _$UoMModelToJson(this);
}
