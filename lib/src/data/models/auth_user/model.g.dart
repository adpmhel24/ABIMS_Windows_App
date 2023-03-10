// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthUserModel _$AuthUserModelFromJson(Map<String, dynamic> json) =>
    AuthUserModel(
      id: json['id'] as int,
      username: json['username'] as String?,
      fullname: json['fullname'] as String?,
      isActive: json['isActive'] as bool,
      dateUpdated: DateTime.parse(json['date_updated'] as String),
      branch: json['branch'] as String?,
      whse: json['whse'] as String?,
      token: json['token'] as String,
    );

Map<String, dynamic> _$AuthUserModelToJson(AuthUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullname': instance.fullname,
      'isActive': instance.isActive,
      'date_updated': instance.dateUpdated.toIso8601String(),
      'branch': instance.branch,
      'whse': instance.whse,
      'token': instance.token,
    };
