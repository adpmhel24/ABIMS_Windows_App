part of 'bloc.dart';

class CreateUpdateBoMState extends Equatable {
  final FormzStatus status;
  final FormzString fItemCode;
  final FormzDouble fQuantity;
  final FormzString fUom;
  final FormzString fBaseUom;
  final FormzDouble fBaseWeight;
  final FormzDouble fUnbakeDW;
  final FormzDouble fBakedDW;
  final FormzString fPremixCode;
  final FormzDouble fTotalDW;
  final FormzList<BoMRowModel> fRows;
  final String message;

  const CreateUpdateBoMState({
    this.status = FormzStatus.pure,
    this.fItemCode = const FormzString.pure(),
    this.fQuantity = const FormzDouble.pure(),
    this.fUom = const FormzString.pure(),
    this.fBaseUom = const FormzString.pure(),
    this.fBaseWeight = const FormzDouble.pure(),
    this.fUnbakeDW = const FormzDouble.pure(),
    this.fBakedDW = const FormzDouble.pure(),
    this.fPremixCode = const FormzString.pure(),
    this.fTotalDW = const FormzDouble.pure(),
    this.fRows = const FormzList.pure(),
    this.message = "",
  });

  CreateUpdateBoMState copyWith({
    FormzStatus? status,
    FormzString? fItemCode,
    FormzDouble? fQuantity,
    FormzString? fUom,
    FormzString? fBaseUom,
    FormzDouble? fBaseWeight,
    FormzDouble? fUnbakeDW,
    FormzDouble? fBakedDW,
    FormzString? fPremixCode,
    FormzDouble? fTotalDW,
    FormzList<BoMRowModel>? fRows,
    String? message,
  }) =>
      CreateUpdateBoMState(
        status: status ?? this.status,
        fItemCode: fItemCode ?? this.fItemCode,
        fQuantity: fQuantity ?? this.fQuantity,
        fUom: fUom ?? this.fUom,
        fBaseUom: fBaseUom ?? this.fBaseUom,
        fBaseWeight: fBaseWeight ?? this.fBaseWeight,
        fUnbakeDW: fUnbakeDW ?? this.fUnbakeDW,
        fBakedDW: fBakedDW ?? this.fBakedDW,
        fPremixCode: fPremixCode ?? this.fPremixCode,
        fTotalDW: fTotalDW ?? this.fTotalDW,
        fRows: fRows ?? this.fRows,
        message: message ?? this.message,
      );

  @override
  List<Object?> get props => [
        status,
        fItemCode,
        fQuantity,
        fUom,
        fBaseUom,
        fBaseWeight,
        fUnbakeDW,
        fBakedDW,
        fPremixCode,
        fTotalDW,
        fRows,
        message,
      ];
}
