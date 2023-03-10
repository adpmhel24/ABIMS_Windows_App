import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../data/models/bom/model.dart';
import '../../../../../data/repositories/repo_bom.dart';
import '../../../../../utils/fetching_status.dart';

part 'event.dart';
part 'state.dart';

class FetchBoMsBloc extends Bloc<FetchBoMsEvent, FetchBoMsState> {
  final BomRepo repo;
  FetchBoMsBloc(this.repo) : super(const FetchBoMsState()) {
    on<LoadBoMs>(_onLoadBoMs);
    on<SearchByKeyword>(_onSearchByKeyword);
  }

  void _onLoadBoMs(LoadBoMs event, Emitter<FetchBoMsState> emit) async {
    emit(state.copyWith(status: FetchingStatus.loading));

    try {
      await repo.getAll();
      emit(state.copyWith(status: FetchingStatus.success, datas: repo.datas));
    } on HttpException catch (e) {
      emit(state.copyWith(status: FetchingStatus.error, message: e.message));
    }
  }

  void _onSearchByKeyword(SearchByKeyword event, Emitter<FetchBoMsState> emit) {
    emit(state.copyWith(status: FetchingStatus.loading));

    List<BoMModel> datas = repo.datas;

    try {
      emit(
        state.copyWith(
          status: FetchingStatus.success,
          datas: (event.value.isNotEmpty)
              ? datas
                  .where((element) => element.itemCode
                      .toLowerCase()
                      .contains(event.value.toLowerCase()))
                  .toList()
              : datas,
        ),
      );
    } on HttpException catch (e) {
      emit(state.copyWith(status: FetchingStatus.error, message: e.message));
    }
  }
}
