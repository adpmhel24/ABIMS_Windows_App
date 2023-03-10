import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    @JsonKey(name: "next_page") int? nextPage,
    @JsonKey(name: "per_page") int? perPage,
    required int total,
    required int pages,
    @JsonKey(name: "current_page") required int currentPage,
  }) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
