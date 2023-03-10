// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoMRowModel _$BoMRowModelFromJson(Map<String, dynamic> json) => BoMRowModel(
      id: json['id'] as int?,
      bomId: json['bom_id'] as int?,
      itemCode: json['item_code'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      uom: json['uom'] as String,
      isRemoved: json['isRemoved'] as bool? ?? false,
    );

Map<String, dynamic> _$BoMRowModelToJson(BoMRowModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bom_id': instance.bomId,
      'item_code': instance.itemCode,
      'quantity': instance.quantity,
      'uom': instance.uom,
      'isRemoved': instance.isRemoved,
    };
