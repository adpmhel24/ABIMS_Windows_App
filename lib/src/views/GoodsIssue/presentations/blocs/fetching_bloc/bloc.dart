import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/fetching_status.dart';
import '../../../data/models/paginated_result.dart';
import '../../../data/repositories/repo_goods_issue.dart';

part 'event.dart';
part 'state.dart';

class FetchingGoodsIssueBloc
    extends Bloc<FetchingGoodsIssueEvent, FetchingGoodsIssueState> {
  final GoodsIssueRepo repo;
  FetchingGoodsIssueBloc(this.repo) : super(const FetchingGoodsIssueState()) {
    on<LoadAllGoodsIssue>(_onLoadAllGoodsIssue);
  }

  void _onLoadAllGoodsIssue(
      LoadAllGoodsIssue event, Emitter<FetchingGoodsIssueState> emit) async {
    emit(state.copyWith(status: FetchingStatus.loading));

    try {
      final result = await repo.getForSap(params: event.params);
      emit(state.copyWith(
          status: FetchingStatus.success,
          result: PaginatedResultGoodsIssue.fromJson(result)));
    } on HttpException catch (e) {
      emit(state.copyWith(
          status: FetchingStatus.error, statusMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: FetchingStatus.error, statusMessage: e.toString()));
    }
  }
}
