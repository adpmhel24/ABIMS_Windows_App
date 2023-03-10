// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoodsIssueRowModel _$$_GoodsIssueRowModelFromJson(
        Map<String, dynamic> json) =>
    _$_GoodsIssueRowModel(
      id: json['id'] as int?,
      docId: json['doc_id'] as int?,
      itemCode: json['item_code'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      whsecode: json['whsecode'] as String?,
      uom: json['uom'] as String?,
      invQty: (json['inv_qty'] as num?)?.toDouble(),
      invUom: json['inv_uom'] as String?,
    );

Map<String, dynamic> _$$_GoodsIssueRowModelToJson(
        _$_GoodsIssueRowModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doc_id': instance.docId,
      'item_code': instance.itemCode,
      'quantity': instance.quantity,
      'whsecode': instance.whsecode,
      'uom': instance.uom,
      'inv_qty': instance.invQty,
      'inv_uom': instance.invUom,
    };
