import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class AuthUserModel {
  int id;
  String? username;
  String? fullname;
  bool isActive;
  @JsonKey(name: "date_updated")
  DateTime dateUpdated;
  String? branch;
  String? whse;
  String token;

  AuthUserModel({
    required this.id,
    this.username,
    this.fullname,
    required this.isActive,
    required this.dateUpdated,
    this.branch,
    this.whse,
    required this.token,
  });

  factory AuthUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthUserModelToJson(this);
}
