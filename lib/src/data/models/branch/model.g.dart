// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BranchModel _$$_BranchModelFromJson(Map<String, dynamic> json) =>
    _$_BranchModel(
      id: json['id'] as int,
      code: json['code'] as String,
      description: json['name'] as String?,
      seriesCode: json['series_code'] as String? ?? '',
      priceListCode: json['pricelist_code'] as String? ?? '',
    );

Map<String, dynamic> _$$_BranchModelToJson(_$_BranchModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.description,
      'series_code': instance.seriesCode,
      'pricelist_code': instance.priceListCode,
    };
