// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedResultInvAdjOut _$$_PaginatedResultInvAdjOutFromJson(
        Map<String, dynamic> json) =>
    _$_PaginatedResultInvAdjOut(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              InvAdjustmentOutHeaderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaginatedResultInvAdjOutToJson(
        _$_PaginatedResultInvAdjOut instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };
