// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BoMModel _$BoMModelFromJson(Map<String, dynamic> json) => BoMModel(
      id: json['id'] as int?,
      itemCode: json['item_code'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      uom: json['uom'] as String,
      premixCode: json['premix_code'] as String?,
      baseUom: json['base_uom'] as String?,
      tdw: (json['tdw'] as num?)?.toDouble(),
      dwPcUnbake: (json['dw_pc_unbake'] as num?)?.toDouble(),
      dwPcBaked: (json['dw_pc_baked'] as num?)?.toDouble(),
      remarks: json['remarks'] as String?,
      rows: json['rows'] == null
          ? const []
          : BoMModel._fromJson(json['rows'] as List),
    )..baseWeight = (json['base_weight'] as num?)?.toDouble();

Map<String, dynamic> _$BoMModelToJson(BoMModel instance) => <String, dynamic>{
      'id': instance.id,
      'item_code': instance.itemCode,
      'quantity': instance.quantity,
      'uom': instance.uom,
      'premix_code': instance.premixCode,
      'base_weight': instance.baseWeight,
      'base_uom': instance.baseUom,
      'tdw': instance.tdw,
      'dw_pc_unbake': instance.dwPcUnbake,
      'dw_pc_baked': instance.dwPcBaked,
      'remarks': instance.remarks,
      'rows': BoMModel._rowsToJson(instance.rows),
    };
