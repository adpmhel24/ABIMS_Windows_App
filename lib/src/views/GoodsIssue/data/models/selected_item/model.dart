import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.g.dart';
part 'model.freezed.dart';

@freezed
class SelectedItemModel with _$SelectedItemModel {
  const factory SelectedItemModel({
    @JsonKey(name: "item_code") required String itemCode,
    @JsonKey(name: "quantity") required double quantity,
    @JsonKey(name: "whsecode") required String whsecode,
    @JsonKey(name: "uom", includeToJson: false) required String uom,
  }) = _SelectedItemModel;

  factory SelectedItemModel.fromJson(Map<String, dynamic> json) =>
      _$SelectedItemModelFromJson(json);
}
