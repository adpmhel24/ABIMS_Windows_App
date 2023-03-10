// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectedItemModel _$SelectedItemModelFromJson(Map<String, dynamic> json) {
  return _SelectedItemModel.fromJson(json);
}

/// @nodoc
mixin _$SelectedItemModel {
  @JsonKey(name: "item_code")
  String get itemCode => throw _privateConstructorUsedError;
  @JsonKey(name: "quantity")
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: "whsecode")
  String get whsecode => throw _privateConstructorUsedError;
  @JsonKey(name: "uom", includeToJson: false)
  String get uom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedItemModelCopyWith<SelectedItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedItemModelCopyWith<$Res> {
  factory $SelectedItemModelCopyWith(
          SelectedItemModel value, $Res Function(SelectedItemModel) then) =
      _$SelectedItemModelCopyWithImpl<$Res, SelectedItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "item_code") String itemCode,
      @JsonKey(name: "quantity") double quantity,
      @JsonKey(name: "whsecode") String whsecode,
      @JsonKey(name: "uom", includeToJson: false) String uom});
}

/// @nodoc
class _$SelectedItemModelCopyWithImpl<$Res, $Val extends SelectedItemModel>
    implements $SelectedItemModelCopyWith<$Res> {
  _$SelectedItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCode = null,
    Object? quantity = null,
    Object? whsecode = null,
    Object? uom = null,
  }) {
    return _then(_value.copyWith(
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      whsecode: null == whsecode
          ? _value.whsecode
          : whsecode // ignore: cast_nullable_to_non_nullable
              as String,
      uom: null == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectedItemModelCopyWith<$Res>
    implements $SelectedItemModelCopyWith<$Res> {
  factory _$$_SelectedItemModelCopyWith(_$_SelectedItemModel value,
          $Res Function(_$_SelectedItemModel) then) =
      __$$_SelectedItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "item_code") String itemCode,
      @JsonKey(name: "quantity") double quantity,
      @JsonKey(name: "whsecode") String whsecode,
      @JsonKey(name: "uom", includeToJson: false) String uom});
}

/// @nodoc
class __$$_SelectedItemModelCopyWithImpl<$Res>
    extends _$SelectedItemModelCopyWithImpl<$Res, _$_SelectedItemModel>
    implements _$$_SelectedItemModelCopyWith<$Res> {
  __$$_SelectedItemModelCopyWithImpl(
      _$_SelectedItemModel _value, $Res Function(_$_SelectedItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCode = null,
    Object? quantity = null,
    Object? whsecode = null,
    Object? uom = null,
  }) {
    return _then(_$_SelectedItemModel(
      itemCode: null == itemCode
          ? _value.itemCode
          : itemCode // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      whsecode: null == whsecode
          ? _value.whsecode
          : whsecode // ignore: cast_nullable_to_non_nullable
              as String,
      uom: null == uom
          ? _value.uom
          : uom // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectedItemModel implements _SelectedItemModel {
  const _$_SelectedItemModel(
      {@JsonKey(name: "item_code") required this.itemCode,
      @JsonKey(name: "quantity") required this.quantity,
      @JsonKey(name: "whsecode") required this.whsecode,
      @JsonKey(name: "uom", includeToJson: false) required this.uom});

  factory _$_SelectedItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_SelectedItemModelFromJson(json);

  @override
  @JsonKey(name: "item_code")
  final String itemCode;
  @override
  @JsonKey(name: "quantity")
  final double quantity;
  @override
  @JsonKey(name: "whsecode")
  final String whsecode;
  @override
  @JsonKey(name: "uom", includeToJson: false)
  final String uom;

  @override
  String toString() {
    return 'SelectedItemModel(itemCode: $itemCode, quantity: $quantity, whsecode: $whsecode, uom: $uom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedItemModel &&
            (identical(other.itemCode, itemCode) ||
                other.itemCode == itemCode) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.whsecode, whsecode) ||
                other.whsecode == whsecode) &&
            (identical(other.uom, uom) || other.uom == uom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, itemCode, quantity, whsecode, uom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectedItemModelCopyWith<_$_SelectedItemModel> get copyWith =>
      __$$_SelectedItemModelCopyWithImpl<_$_SelectedItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedItemModelToJson(
      this,
    );
  }
}

abstract class _SelectedItemModel implements SelectedItemModel {
  const factory _SelectedItemModel(
      {@JsonKey(name: "item_code")
          required final String itemCode,
      @JsonKey(name: "quantity")
          required final double quantity,
      @JsonKey(name: "whsecode")
          required final String whsecode,
      @JsonKey(name: "uom", includeToJson: false)
          required final String uom}) = _$_SelectedItemModel;

  factory _SelectedItemModel.fromJson(Map<String, dynamic> json) =
      _$_SelectedItemModel.fromJson;

  @override
  @JsonKey(name: "item_code")
  String get itemCode;
  @override
  @JsonKey(name: "quantity")
  double get quantity;
  @override
  @JsonKey(name: "whsecode")
  String get whsecode;
  @override
  @JsonKey(name: "uom", includeToJson: false)
  String get uom;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedItemModelCopyWith<_$_SelectedItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
