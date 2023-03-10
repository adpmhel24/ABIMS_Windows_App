import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../../data/models/bom/row.dart';
import '../../../../../data/models/models.dart';
import '../../../../../data/repositories/repos.dart';
import '../../../../../utils/formz_double.dart';
import '../../../../../utils/formz_list.dart';
import '../../../../../utils/formz_string.dart';

part 'event.dart';
part 'state.dart';

class CreateUpdateBoMBloc
    extends Bloc<CreateUpdateBoMEvent, CreateUpdateBoMState> {
  final BoMModel? bomObj;
  final BomRepo repo;

  CreateUpdateBoMBloc({
    required this.repo,
    this.bomObj,
  }) : super(
          (bomObj != null)
              ? CreateUpdateBoMState(
                  status: FormzStatus.valid,
                  fItemCode: FormzString.dirty(bomObj.itemCode),
                  fQuantity: FormzDouble.dirty(bomObj.quantity),
                  fUom: FormzString.dirty(bomObj.uom),
                  fBaseUom: FormzString.dirty(bomObj.baseUom ?? ""),
                  fBaseWeight: FormzDouble.dirty(bomObj.baseWeight),
                  fUnbakeDW: FormzDouble.dirty(bomObj.dwPcUnbake),
                  fBakedDW: FormzDouble.dirty(bomObj.dwPcBaked),
                  fPremixCode: FormzString.dirty(bomObj.premixCode ?? ""),
                  fTotalDW: FormzDouble.dirty(bomObj.tdw),
                  fRows: FormzList.dirty(
                    bomObj.rows
                        .map((e) => BoMRowModel.fromJson(e.toJson()))
                        .toList(),
                  ),
                )
              : const CreateUpdateBoMState(),
        ) {
    on<ItemCodeChanged>(_onItemCodeChanged);
    on<QuantityChanged>(_onQuantityChanged);
    on<UomChanged>(_onUomChanged);
    on<BaseUomChanged>(_onBaseUomChanged);
    on<BaseWeightChanged>(_onBaseWeightChanged);
    on<UnbakeDWChanged>(_onUnbakeDWChanged);
    on<BakedDWChanged>(_onBakedDWChanged);
    on<PremixCodeChanged>(_onPremixCodeChanged);
    on<TotalDWChanged>(_onTotalDWChanged);
    on<BomRowAdded>(_onBomRowAdded);
    on<BomRowUpdated>(_onBomRowUpdated);
    on<BomRowRemoved>(_onBomRowRemoved);
    on<ButtonSubmitted>(_onButtonSubmitted);
  }

  void _onItemCodeChanged(
      ItemCodeChanged event, Emitter<CreateUpdateBoMState> emit) {
    final fItemCode = FormzString.dirty(event.value);

    emit(
      state.copyWith(
        fItemCode: fItemCode,
        status: Formz.validate(
          [
            fItemCode,
            state.fQuantity,
            state.fUom,
            state.fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onQuantityChanged(
      QuantityChanged event, Emitter<CreateUpdateBoMState> emit) {
    final fQuantity = FormzDouble.dirty(event.value);

    emit(
      state.copyWith(
        fQuantity: fQuantity,
        status: Formz.validate(
          [
            state.fItemCode,
            fQuantity,
            state.fUom,
            state.fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onUomChanged(UomChanged event, Emitter<CreateUpdateBoMState> emit) {
    final fUom = FormzString.dirty(event.value);

    emit(
      state.copyWith(
        fUom: fUom,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            fUom,
            state.fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onBaseUomChanged(
      BaseUomChanged event, Emitter<CreateUpdateBoMState> emit) {
    final fBaseUom = FormzString.dirty(event.value);

    emit(
      state.copyWith(
        fBaseUom: fBaseUom,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            state.fUom,
            state.fRows,
            state.fBaseWeight,
            fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onBaseWeightChanged(
      BaseWeightChanged event, Emitter<CreateUpdateBoMState> emit) {
    final fBaseWeight = FormzDouble.dirty(event.value);

    emit(
      state.copyWith(
        fBaseWeight: fBaseWeight,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            state.fUom,
            state.fRows,
            fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onUnbakeDWChanged(
      UnbakeDWChanged event, Emitter<CreateUpdateBoMState> emit) {
    final fUnbakeDW = FormzDouble.dirty(event.value);

    emit(
      state.copyWith(
        fUnbakeDW: fUnbakeDW,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            state.fUom,
            state.fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onBakedDWChanged(
      BakedDWChanged event, Emitter<CreateUpdateBoMState> emit) {
    final fBakedDW = FormzDouble.dirty(event.value);

    emit(
      state.copyWith(
        fBakedDW: fBakedDW,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            state.fUom,
            state.fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onPremixCodeChanged(
      PremixCodeChanged event, Emitter<CreateUpdateBoMState> emit) {
    final fPremixCode = FormzString.dirty(event.value);

    emit(
      state.copyWith(
        fPremixCode: fPremixCode,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            state.fUom,
            state.fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onTotalDWChanged(
      TotalDWChanged event, Emitter<CreateUpdateBoMState> emit) {
    final fTotalDW = FormzDouble.dirty(event.value);

    emit(
      state.copyWith(
        fTotalDW: fTotalDW,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            state.fUom,
            state.fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onBomRowAdded(BomRowAdded event, Emitter<CreateUpdateBoMState> emit) {
    List<BoMRowModel> rows = [];
    rows.addAll(state.fRows.value);

    int existingIndex =
        rows.indexWhere((element) => element.itemCode == event.value.itemCode);

    if (existingIndex >= 0) {
      rows[existingIndex].quantity += event.value.quantity;
    } else {
      rows.add(event.value);
    }

    final fRows = FormzList.dirty(rows);

    emit(
      state.copyWith(
        fRows: fRows,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            state.fUom,
            fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onBomRowUpdated(
      BomRowUpdated event, Emitter<CreateUpdateBoMState> emit) {
    List<BoMRowModel> rows = [];
    rows.addAll(state.fRows.value);

    rows[event.index] = event.value;

    final fRows = FormzList.dirty(rows);

    emit(
      state.copyWith(
        fRows: fRows,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            state.fUom,
            fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onBomRowRemoved(
      BomRowRemoved event, Emitter<CreateUpdateBoMState> emit) {
    List<BoMRowModel> rows = [];
    rows.addAll(state.fRows.value);

    rows[event.value].isRemoved = true;

    final fRows = FormzList.dirty(rows);

    emit(
      state.copyWith(
        fRows: fRows,
        status: Formz.validate(
          [
            state.fItemCode,
            state.fQuantity,
            state.fUom,
            fRows,
            state.fBaseWeight,
            state.fBaseUom,
          ],
        ),
      ),
    );
  }

  void _onButtonSubmitted(
      ButtonSubmitted event, Emitter<CreateUpdateBoMState> emit) async {
    String message;

    emit(state.copyWith(status: FormzStatus.submissionInProgress));

    Map<String, dynamic> data = {
      "header": {
        "item_code": state.fItemCode.value,
        "quantity": state.fQuantity.value,
        "uom": state.fUom.value,
        "base_uom": state.fBaseUom.value,
        "base_weight": state.fBaseWeight.value,
        "dw_pc_unbake": state.fUnbakeDW.value,
        "dw_pc_baked": state.fBakedDW.value,
        "premix_code": state.fPremixCode.value,
        "tdw": state.fTotalDW.value,
      },
      "rows": state.fRows.value.map((e) => e.toJson()).toList(),
    };

    try {
      if (bomObj != null) {
        message = await repo.update(fk: bomObj!.id!, data: data);
      } else {
        message = await repo.create(data);
      }

      emit(state.copyWith(
          status: FormzStatus.submissionSuccess, message: message));
    } on HttpException catch (e) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, message: e.message));
    } on Exception catch (e) {
      emit(state.copyWith(
          status: FormzStatus.submissionFailure, message: e.toString()));
    }
  }
}
