import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.g.dart';
part 'model.freezed.dart';

@freezed
class SelectedInvAdjItemModel with _$SelectedInvAdjItemModel {
  const factory SelectedInvAdjItemModel({
    @JsonKey(name: "item_code") required String itemCode,
    @JsonKey(name: "quantity") required double quantity,
    @JsonKey(name: "whsecode") required String whsecode,
    @JsonKey(name: "uom", includeToJson: false) required String uom,
  }) = _SelectedInvAdjItemModel;

  factory SelectedInvAdjItemModel.fromJson(Map<String, dynamic> json) =>
      _$SelectedInvAdjItemModelFromJson(json);
}
