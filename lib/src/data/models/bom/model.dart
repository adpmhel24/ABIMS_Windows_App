import '/src/data/models/bom/row.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class BoMModel {
  static toNull(_) => null;

  static List<Map<String, dynamic>>? _rowsToJson(List<BoMRowModel> rows) {
    return rows.map((e) => e.toJson()).toList();
  }

  static List<BoMRowModel> _fromJson(List<dynamic> data) {
    if (data.isNotEmpty) {
      return data.map((e) => BoMRowModel.fromJson(e!)).toList();
    } else {
      return [];
    }
  }

  int? id;

  @JsonKey(name: "item_code")
  String itemCode;

  double quantity;

  String uom;

  @JsonKey(name: "premix_code")
  String? premixCode;

  @JsonKey(name: "base_weight")
  double? baseWeight;

  @JsonKey(name: "base_uom")
  String? baseUom;

  double? tdw;

  @JsonKey(name: "dw_pc_unbake")
  double? dwPcUnbake;

  @JsonKey(name: "dw_pc_baked")
  double? dwPcBaked;

  String? remarks;

  @JsonKey(fromJson: _fromJson, toJson: _rowsToJson)
  List<BoMRowModel> rows;

  BoMModel(
      {this.id,
      required this.itemCode,
      required this.quantity,
      required this.uom,
      this.premixCode,
      this.baseUom,
      this.tdw,
      this.dwPcUnbake,
      this.dwPcBaked,
      this.remarks,
      this.rows = const []});

  factory BoMModel.fromJson(Map<String, dynamic> json) =>
      _$BoMModelFromJson(json);

  Map<String, dynamic> toJson() => _$BoMModelToJson(this);
}
