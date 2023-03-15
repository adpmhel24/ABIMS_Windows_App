import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/models/pagination/model.dart';
import 'header_model.dart';

part 'paginated_result.freezed.dart';
part 'paginated_result.g.dart';

@freezed
class PaginatedResultInvAdjOut with _$PaginatedResultInvAdjOut {
  const factory PaginatedResultInvAdjOut({
    List<InvAdjustmentOutHeaderModel>? data,
    PaginationModel? pagination,
  }) = _PaginatedResultInvAdjOut;

  factory PaginatedResultInvAdjOut.fromJson(Map<String, dynamic> json) =>
      _$PaginatedResultInvAdjOutFromJson(json);
}
