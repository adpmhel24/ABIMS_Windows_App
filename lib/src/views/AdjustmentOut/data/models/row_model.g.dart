// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'row_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvAdjustmentOutRowModel _$$_InvAdjustmentOutRowModelFromJson(
        Map<String, dynamic> json) =>
    _$_InvAdjustmentOutRowModel(
      id: json['id'] as int?,
      adjustinId: json['adjustin_id'] as int?,
      objtype: json['objtype'] as int?,
      itemCode: json['item_code'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      whsecode: json['whsecode'] as String?,
      uom: json['uom'] as String?,
      dateCreated: json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
      dateUpdated: json['date_updated'] == null
          ? null
          : DateTime.parse(json['date_updated'] as String),
    );

Map<String, dynamic> _$$_InvAdjustmentOutRowModelToJson(
    _$_InvAdjustmentOutRowModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('adjustin_id', instance.adjustinId);
  writeNotNull('objtype', instance.objtype);
  writeNotNull('item_code', instance.itemCode);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('whsecode', instance.whsecode);
  writeNotNull('uom', instance.uom);
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  writeNotNull('date_updated', instance.dateUpdated?.toIso8601String());
  return val;
}
