import 'package:json_annotation/json_annotation.dart';

part 'row.g.dart';

@JsonSerializable()
class BoMRowModel {
  // static _idToJson(int? v) => v;

  // @JsonKey(toJson: _idToJson, includeIfNull: false)
  int? id;

  @JsonKey(name: "bom_id")
  int? bomId;

  @JsonKey(name: "item_code")
  String itemCode;

  double quantity;

  String uom;

  bool isRemoved;

  BoMRowModel({
    this.id,
    this.bomId,
    required this.itemCode,
    required this.quantity,
    required this.uom,
    this.isRemoved = false,
  });

  factory BoMRowModel.fromJson(Map<String, dynamic> json) =>
      _$BoMRowModelFromJson(json);

  Map<String, dynamic> toJson() => _$BoMRowModelToJson(this);
}
