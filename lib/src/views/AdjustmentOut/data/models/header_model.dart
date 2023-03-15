import 'package:freezed_annotation/freezed_annotation.dart';

import 'row_model.dart';

part 'header_model.freezed.dart';
part 'header_model.g.dart';

@freezed
class InvAdjustmentOutHeaderModel with _$InvAdjustmentOutHeaderModel {
  static List<InvAdjustmentOutRowModel> rowFromJson(List<dynamic> data) {
    return data.map((e) => InvAdjustmentOutRowModel.fromJson(e)).toList();
  }

  static List<Map<String, dynamic>> rowToJson(
      List<InvAdjustmentOutRowModel>? rows) {
    if (rows != null) {
      return rows.map((e) => e.toJson()).toList();
    }
    return [];
  }

  const factory InvAdjustmentOutHeaderModel({
    @JsonKey(name: "id", includeIfNull: false) int? id,
    @JsonKey(name: "series", includeIfNull: false) int? series,
    @JsonKey(name: "seriescode", includeIfNull: false) String? seriescode,
    @JsonKey(name: "transnumber", includeIfNull: false) int? transnumber,
    @JsonKey(name: "transdate", includeIfNull: false) DateTime? transdate,
    @JsonKey(name: "reference", includeIfNull: false) String? reference,
    @JsonKey(name: "objtype", includeIfNull: false) int? objtype,
    @JsonKey(name: "docstatus", includeIfNull: false) String? docstatus,
    @JsonKey(name: "sap_number", includeIfNull: false) int? sapNumber,
    @JsonKey(name: "remarks") String? remarks,
    @JsonKey(name: "date_created", includeIfNull: false) DateTime? dateCreated,
    @JsonKey(name: "date_updated", includeIfNull: false) DateTime? dateUpdated,
    @JsonKey(name: "hashed_id", includeIfNull: false) String? hashedId,
    @Default(false) bool isSelected,
    @JsonKey(fromJson: InvAdjustmentOutHeaderModel.rowFromJson, toJson: InvAdjustmentOutHeaderModel.rowToJson, defaultValue: [])
        List<InvAdjustmentOutRowModel>? rows,
  }) = _InvAdjustmentOutHeaderModel;

  factory InvAdjustmentOutHeaderModel.fromJson(Map<String, dynamic> json) =>
      _$InvAdjustmentOutHeaderModelFromJson(json);
}
