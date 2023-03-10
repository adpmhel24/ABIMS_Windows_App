import 'package:freezed_annotation/freezed_annotation.dart';

import 'row_model.dart';

part 'header_model.freezed.dart';
part 'header_model.g.dart';

@freezed
class GoodsIssueHeaderModel with _$GoodsIssueHeaderModel {
  static List<GoodsIssueRowModel> rowFromJson(List<dynamic> data) {
    return data.map((e) => GoodsIssueRowModel.fromJson(e)).toList();
  }

  static List<Map<String, dynamic>> rowToJson(List<GoodsIssueRowModel>? rows) {
    if (rows != null) {
      return rows.map((e) => e.toJson()).toList();
    }
    return [];
  }

  const factory GoodsIssueHeaderModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "series") int? series,
    @JsonKey(name: "objtype") int? objtype,
    @JsonKey(name: "seriescode") String? seriescode,
    @JsonKey(name: "transnumber") int? transnumber,
    @JsonKey(name: "transdate") DateTime? transdate,
    @JsonKey(name: "reference") String? reference,
    @JsonKey(name: "docstatus") String? docstatus,
    @JsonKey(name: "prod_order_id") int? prodOrderId,
    @JsonKey(name: "sap_number") int? sapNumber,
    @JsonKey(name: "remarks") String? remarks,
    @JsonKey(name: "created_by") int? createdBy,
    @JsonKey(name: "updated_by") int? updatedBy,
    @JsonKey(name: "canceled_by") int? canceledBy,
    @JsonKey(name: "date_created") DateTime? dateCreated,
    @JsonKey(name: "date_canceled") DateTime? dateCanceled,
    @JsonKey(name: "date_updated") DateTime? dateUpdated,
    @JsonKey(name: "confirmed_by") int? confirmedBy,
    @JsonKey(name: "date_confirmed") DateTime? dateConfirmed,
    @JsonKey(name: "confirm") bool? confirm,
    @JsonKey(name: "hashed_id") String? hashedId,
    @Default(false) bool? isSelected,
    @JsonKey(name: "issue_row", defaultValue: [], fromJson: GoodsIssueHeaderModel.rowFromJson, toJson: GoodsIssueHeaderModel.rowToJson)
        List<GoodsIssueRowModel>? issueRow,
  }) = _GoodsIssueHeaderModel;

  factory GoodsIssueHeaderModel.fromJson(Map<String, dynamic> json) =>
      _$GoodsIssueHeaderModelFromJson(json);
}
