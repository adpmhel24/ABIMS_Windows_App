import 'package:freezed_annotation/freezed_annotation.dart';

part 'row_model.freezed.dart';
part 'row_model.g.dart';

@freezed
class GoodsIssueRowModel with _$GoodsIssueRowModel {
  const factory GoodsIssueRowModel({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "doc_id") int? docId,
    @JsonKey(name: "item_code") String? itemCode,
    @JsonKey(name: "quantity") double? quantity,
    @JsonKey(name: "whsecode") String? whsecode,
    @JsonKey(name: "uom") String? uom,
    @JsonKey(name: "inv_qty") double? invQty,
    @JsonKey(name: "inv_uom") String? invUom,
  }) = _GoodsIssueRowModel;

  factory GoodsIssueRowModel.fromJson(Map<String, dynamic> json) =>
      _$GoodsIssueRowModelFromJson(json);
}
