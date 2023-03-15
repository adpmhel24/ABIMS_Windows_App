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

SelectedInvAdjItemModel _$SelectedInvAdjItemModelFromJson(
    Map<String, dynamic> json) {
  return _SelectedInvAdjItemModel.fromJson(json);
}

/// @nodoc
mixin _$SelectedInvAdjItemModel {
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
  $SelectedInvAdjItemModelCopyWith<SelectedInvAdjItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedInvAdjItemModelCopyWith<$Res> {
  factory $SelectedInvAdjItemModelCopyWith(SelectedInvAdjItemModel value,
          $Res Function(SelectedInvAdjItemModel) then) =
      _$SelectedInvAdjItemModelCopyWithImpl<$Res, SelectedInvAdjItemModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "item_code") String itemCode,
      @JsonKey(name: "quantity") double quantity,
      @JsonKey(name: "whsecode") String whsecode,
      @JsonKey(name: "uom", includeToJson: false) String uom});
}

/// @nodoc
class _$SelectedInvAdjItemModelCopyWithImpl<$Res,
        $Val extends SelectedInvAdjItemModel>
    implements $SelectedInvAdjItemModelCopyWith<$Res> {
  _$SelectedInvAdjItemModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_SelectedInvAdjItemModelCopyWith<$Res>
    implements $SelectedInvAdjItemModelCopyWith<$Res> {
  factory _$$_SelectedInvAdjItemModelCopyWith(_$_SelectedInvAdjItemModel value,
          $Res Function(_$_SelectedInvAdjItemModel) then) =
      __$$_SelectedInvAdjItemModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "item_code") String itemCode,
      @JsonKey(name: "quantity") double quantity,
      @JsonKey(name: "whsecode") String whsecode,
      @JsonKey(name: "uom", includeToJson: false) String uom});
}

/// @nodoc
class __$$_SelectedInvAdjItemModelCopyWithImpl<$Res>
    extends _$SelectedInvAdjItemModelCopyWithImpl<$Res,
        _$_SelectedInvAdjItemModel>
    implements _$$_SelectedInvAdjItemModelCopyWith<$Res> {
  __$$_SelectedInvAdjItemModelCopyWithImpl(_$_SelectedInvAdjItemModel _value,
      $Res Function(_$_SelectedInvAdjItemModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemCode = null,
    Object? quantity = null,
    Object? whsecode = null,
    Object? uom = null,
  }) {
    return _then(_$_SelectedInvAdjItemModel(
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
class _$_SelectedInvAdjItemModel implements _SelectedInvAdjItemModel {
  const _$_SelectedInvAdjItemModel(
      {@JsonKey(name: "item_code") required this.itemCode,
      @JsonKey(name: "quantity") required this.quantity,
      @JsonKey(name: "whsecode") required this.whsecode,
      @JsonKey(name: "uom", includeToJson: false) required this.uom});

  factory _$_SelectedInvAdjItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_SelectedInvAdjItemModelFromJson(json);

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
    return 'SelectedInvAdjItemModel(itemCode: $itemCode, quantity: $quantity, whsecode: $whsecode, uom: $uom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedInvAdjItemModel &&
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
  _$$_SelectedInvAdjItemModelCopyWith<_$_SelectedInvAdjItemModel>
      get copyWith =>
          __$$_SelectedInvAdjItemModelCopyWithImpl<_$_SelectedInvAdjItemModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectedInvAdjItemModelToJson(
      this,
    );
  }
}

abstract class _SelectedInvAdjItemModel implements SelectedInvAdjItemModel {
  const factory _SelectedInvAdjItemModel(
      {@JsonKey(name: "item_code")
          required final String itemCode,
      @JsonKey(name: "quantity")
          required final double quantity,
      @JsonKey(name: "whsecode")
          required final String whsecode,
      @JsonKey(name: "uom", includeToJson: false)
          required final String uom}) = _$_SelectedInvAdjItemModel;

  factory _SelectedInvAdjItemModel.fromJson(Map<String, dynamic> json) =
      _$_SelectedInvAdjItemModel.fromJson;

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
  _$$_SelectedInvAdjItemModelCopyWith<_$_SelectedInvAdjItemModel>
      get copyWith => throw _privateConstructorUsedError;
}
