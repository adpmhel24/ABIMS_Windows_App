// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: json['id'] as int?,
      itemCode: json['item_code'] as String,
      itemName: json['item_name'] as String?,
      uom: json['uom'] as String,
      itemGroup: json['item_group'] as String,
      price: (json['price'] as num?)?.toDouble(),
      uomGroup: json['uom_group'] as int?,
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_code': instance.itemCode,
      'item_name': instance.itemName,
      'uom': instance.uom,
      'item_group': instance.itemGroup,
      'price': instance.price,
      'uom_group': instance.uomGroup,
    };
