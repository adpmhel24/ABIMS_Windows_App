import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class BranchModel with _$BranchModel {
  const factory BranchModel({
    required int id,
    required String code,
    @JsonKey(name: "name") String? description,
    @JsonKey(name: "series_code", defaultValue: "") String? seriesCode,
    @JsonKey(name: "pricelist_code", defaultValue: "") String? priceListCode,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);
}
