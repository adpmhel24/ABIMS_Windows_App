import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/pagination/model.dart';
import 'header_model.dart';

part 'paginated_result.freezed.dart';
part 'paginated_result.g.dart';

@freezed
class PaginatedResultGoodsIssue with _$PaginatedResultGoodsIssue {
  const factory PaginatedResultGoodsIssue({
    @Default([]) List<GoodsIssueHeaderModel>? data,
    PaginationModel? pagination,
  }) = _PaginatedResultGoodsIssue;

  factory PaginatedResultGoodsIssue.fromJson(Map<String, dynamic> json) =>
      _$PaginatedResultGoodsIssueFromJson(json);
}
