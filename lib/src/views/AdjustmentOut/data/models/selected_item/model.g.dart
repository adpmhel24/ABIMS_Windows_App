// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectedInvAdjItemModel _$$_SelectedInvAdjItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_SelectedInvAdjItemModel(
      itemCode: json['item_code'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      whsecode: json['whsecode'] as String,
      uom: json['uom'] as String,
    );

Map<String, dynamic> _$$_SelectedInvAdjItemModelToJson(
        _$_SelectedInvAdjItemModel instance) =>
    <String, dynamic>{
      'item_code': instance.itemCode,
      'quantity': instance.quantity,
      'whsecode': instance.whsecode,
    };
