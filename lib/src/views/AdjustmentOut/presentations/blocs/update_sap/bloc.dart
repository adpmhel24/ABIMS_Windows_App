import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../data/repositories/repo_adj_out.dart';

part 'event.dart';
part 'state.dart';

class InvAdjOutUpdateSapBloc
    extends Bloc<InvAdjOutUpdateSapEvent, InvAdjOutUpdateSapState> {
  final AdjustmentOutRepo repo;
  InvAdjOutUpdateSapBloc(this.repo) : super(const InvAdjOutUpdateSapState()) {
    on<ButtonSubmitted>(_onButtonSubmitted);
  }

  void _onButtonSubmitted(
      ButtonSubmitted event, Emitter<InvAdjOutUpdateSapState> emit) async {
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
