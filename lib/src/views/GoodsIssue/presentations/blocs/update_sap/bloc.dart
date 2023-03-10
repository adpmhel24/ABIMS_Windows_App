import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../data/repositories/repo_goods_issue.dart';

part 'event.dart';
part 'state.dart';

class GoodsIssueUpdateSapBloc
    extends Bloc<GoodsIssueUpdateSapEvent, GoodsIssueUpdateSapState> {
  final GoodsIssueRepo repo;
  GoodsIssueUpdateSapBloc(this.repo) : super(const GoodsIssueUpdateSapState()) {
    on<ButtonSubmitted>(_onButtonSubmitted);
  }

  void _onButtonSubmitted(
      ButtonSubmitted event, Emitter<GoodsIssueUpdateSapState> emit) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    try {
      final message = await repo
          .update(data: {"ids": event.ids, "sap_number": event.sapNumber});
      emit(state.copyWith(
          status: FormzStatus.submissionSuccess, statusMessage: message));
    } on HttpException catch (e) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, statusMessage: e.message));
    } catch (e) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, statusMessage: e.toString()));
    }
  }
}
