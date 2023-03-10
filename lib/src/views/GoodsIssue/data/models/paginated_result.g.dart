// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedResultGoodsIssue _$$_PaginatedResultGoodsIssueFromJson(
        Map<String, dynamic> json) =>
    _$_PaginatedResultGoodsIssue(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  GoodsIssueHeaderModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaginatedResultGoodsIssueToJson(
        _$_PaginatedResultGoodsIssue instance) =>
    <String, dynamic>{
      'data': instance.data,
      'pagination': instance.pagination,
    };
