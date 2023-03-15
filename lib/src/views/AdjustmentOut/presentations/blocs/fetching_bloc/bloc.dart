import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../utils/fetching_status.dart';
import '../../../data/models/paginated_result.dart';
import '../../../data/repositories/repo_adj_out.dart';

part 'event.dart';
part 'state.dart';

class FetchingAdjustmentOutBloc
    extends Bloc<FetchingAdjustmentOutEvent, FetchingAdjustmentOutState> {
  final AdjustmentOutRepo repo;
  FetchingAdjustmentOutBloc(this.repo)
      : super(const FetchingAdjustmentOutState()) {
    on<LoadAllInvAdjOut>(_onLoadAllInvAdjOut);
  }

  void _onLoadAllInvAdjOut(
      LoadAllInvAdjOut event, Emitter<FetchingAdjustmentOutState> emit) async {
    emit(state.copyWith(status: FetchingStatus.loading));

    try {
      final result = await repo.getAll(params: event.params);
      emit(state.copyWith(
          status: FetchingStatus.success,
          result: PaginatedResultInvAdjOut.fromJson(result)));
    } on HttpException catch (e) {
      emit(state.copyWith(
          status: FetchingStatus.error, statusMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: FetchingStatus.error, statusMessage: e.toString()));
    }
  }
}
