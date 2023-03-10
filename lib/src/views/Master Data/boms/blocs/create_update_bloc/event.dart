part of 'bloc.dart';

abstract class CreateUpdateBoMEvent extends Equatable {
  const CreateUpdateBoMEvent();

  @override
  List<Object?> get props => [];
}

class ItemCodeChanged extends CreateUpdateBoMEvent {
  final String value;
  const ItemCodeChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class QuantityChanged extends CreateUpdateBoMEvent {
  final double? value;
  const QuantityChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class UomChanged extends CreateUpdateBoMEvent {
  final String value;
  const UomChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class BaseUomChanged extends CreateUpdateBoMEvent {
  final String value;
  const BaseUomChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class BaseWeightChanged extends CreateUpdateBoMEvent {
  final double? value;
  const BaseWeightChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class UnbakeDWChanged extends CreateUpdateBoMEvent {
  final double? value;
  const UnbakeDWChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class BakedDWChanged extends CreateUpdateBoMEvent {
  final double? value;
  const BakedDWChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class PremixCodeChanged extends CreateUpdateBoMEvent {
  final String value;
  const PremixCodeChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class TotalDWChanged extends CreateUpdateBoMEvent {
  final double? value;
  const TotalDWChanged(this.value);

  @override
  List<Object?> get props => [value];
}

class BomRowAdded extends CreateUpdateBoMEvent {
  final BoMRowModel value;
  const BomRowAdded(this.value);
  @override
  List<Object?> get props => [value];
}

class BomRowUpdated extends CreateUpdateBoMEvent {
  final int index;
  final BoMRowModel value;
  const BomRowUpdated({
    required this.index,
    required this.value,
  });
  @override
  List<Object?> get props => [index, value];
}

class BomRowRemoved extends CreateUpdateBoMEvent {
  final int value;
  const BomRowRemoved(this.value);
  @override
  List<Object?> get props => [value];
}

class ButtonSubmitted extends CreateUpdateBoMEvent {}
