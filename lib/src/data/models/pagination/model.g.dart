// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginationModel _$$_PaginationModelFromJson(Map<String, dynamic> json) =>
    _$_PaginationModel(
      nextPage: json['next_page'] as int?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int,
      pages: json['pages'] as int,
      currentPage: json['current_page'] as int,
    );

Map<String, dynamic> _$$_PaginationModelToJson(_$_PaginationModel instance) =>
    <String, dynamic>{
      'next_page': instance.nextPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'pages': instance.pages,
      'current_page': instance.currentPage,
    };
