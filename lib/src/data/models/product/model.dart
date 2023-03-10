import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class ProductModel {
  int? id;

  @JsonKey(name: "item_code")
  String itemCode;

  @JsonKey(name: "item_name")
  String? itemName;

  String uom;

  @JsonKey(name: "item_group")
  String itemGroup;

  double? price;

  @JsonKey(name: "uom_group")
  int? uomGroup;

  ProductModel({
    this.id,
    required this.itemCode,
    this.itemName,
    required this.uom,
    required this.itemGroup,
    this.price,
    this.uomGroup,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
