// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UoMModel _$UoMModelFromJson(Map<String, dynamic> json) => UoMModel(
      id: json['id'] as int?,
      code: json['code'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UoMModelToJson(UoMModel instance) => <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
    };
