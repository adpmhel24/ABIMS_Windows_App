import 'package:freezed_annotation/freezed_annotation.dart';

part 'row_model.freezed.dart';
part 'row_model.g.dart';

@freezed
class InvAdjustmentOutRowModel with _$InvAdjustmentOutRowModel {
  const factory InvAdjustmentOutRowModel({
    @JsonKey(name: "id", includeIfNull: false) int? id,
    @JsonKey(name: "adjustin_id", includeIfNull: false) int? adjustinId,
    @JsonKey(name: "objtype", includeIfNull: false) int? objtype,
    @JsonKey(name: "item_code", includeIfNull: false) String? itemCode,
    @JsonKey(name: "quantity", includeIfNull: false) double? quantity,
    @JsonKey(name: "whsecode", includeIfNull: false) String? whsecode,
    @JsonKey(name: "uom", includeIfNull: false) String? uom,
    @JsonKey(name: "date_created", includeIfNull: false) DateTime? dateCreated,
    @JsonKey(name: "date_updated", includeIfNull: false) DateTime? dateUpdated,
  }) = _InvAdjustmentOutRowModel;

  factory InvAdjustmentOutRowModel.fromJson(Map<String, dynamic> json) =>
      _$InvAdjustmentOutRowModelFromJson(json);
}
