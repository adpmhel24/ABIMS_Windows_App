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

BranchModel _$BranchModelFromJson(Map<String, dynamic> json) {
  return _BranchModel.fromJson(json);
}

/// @nodoc
mixin _$BranchModel {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "series_code", defaultValue: "")
  String? get seriesCode => throw _privateConstructorUsedError;
  @JsonKey(name: "pricelist_code", defaultValue: "")
  String? get priceListCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BranchModelCopyWith<BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchModelCopyWith<$Res> {
  factory $BranchModelCopyWith(
          BranchModel value, $Res Function(BranchModel) then) =
      _$BranchModelCopyWithImpl<$Res, BranchModel>;
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: "name")
          String? description,
      @JsonKey(name: "series_code", defaultValue: "")
          String? seriesCode,
      @JsonKey(name: "pricelist_code", defaultValue: "")
          String? priceListCode});
}

/// @nodoc
class _$BranchModelCopyWithImpl<$Res, $Val extends BranchModel>
    implements $BranchModelCopyWith<$Res> {
  _$BranchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = freezed,
    Object? seriesCode = freezed,
    Object? priceListCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesCode: freezed == seriesCode
          ? _value.seriesCode
          : seriesCode // ignore: cast_nullable_to_non_nullable
              as String?,
      priceListCode: freezed == priceListCode
          ? _value.priceListCode
          : priceListCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BranchModelCopyWith<$Res>
    implements $BranchModelCopyWith<$Res> {
  factory _$$_BranchModelCopyWith(
          _$_BranchModel value, $Res Function(_$_BranchModel) then) =
      __$$_BranchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String code,
      @JsonKey(name: "name")
          String? description,
      @JsonKey(name: "series_code", defaultValue: "")
          String? seriesCode,
      @JsonKey(name: "pricelist_code", defaultValue: "")
          String? priceListCode});
}

/// @nodoc
class __$$_BranchModelCopyWithImpl<$Res>
    extends _$BranchModelCopyWithImpl<$Res, _$_BranchModel>
    implements _$$_BranchModelCopyWith<$Res> {
  __$$_BranchModelCopyWithImpl(
      _$_BranchModel _value, $Res Function(_$_BranchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? description = freezed,
    Object? seriesCode = freezed,
    Object? priceListCode = freezed,
  }) {
    return _then(_$_BranchModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      seriesCode: freezed == seriesCode
          ? _value.seriesCode
          : seriesCode // ignore: cast_nullable_to_non_nullable
              as String?,
      priceListCode: freezed == priceListCode
          ? _value.priceListCode
          : priceListCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BranchModel implements _BranchModel {
  const _$_BranchModel(
      {required this.id,
      required this.code,
      @JsonKey(name: "name") this.description,
      @JsonKey(name: "series_code", defaultValue: "") this.seriesCode,
      @JsonKey(name: "pricelist_code", defaultValue: "") this.priceListCode});

  factory _$_BranchModel.fromJson(Map<String, dynamic> json) =>
      _$$_BranchModelFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  @JsonKey(name: "name")
  final String? description;
  @override
  @JsonKey(name: "series_code", defaultValue: "")
  final String? seriesCode;
  @override
  @JsonKey(name: "pricelist_code", defaultValue: "")
  final String? priceListCode;

  @override
  String toString() {
    return 'BranchModel(id: $id, code: $code, description: $description, seriesCode: $seriesCode, priceListCode: $priceListCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BranchModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.seriesCode, seriesCode) ||
                other.seriesCode == seriesCode) &&
            (identical(other.priceListCode, priceListCode) ||
                other.priceListCode == priceListCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, code, description, seriesCode, priceListCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BranchModelCopyWith<_$_BranchModel> get copyWith =>
      __$$_BranchModelCopyWithImpl<_$_BranchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BranchModelToJson(
      this,
    );
  }
}

abstract class _BranchModel implements BranchModel {
  const factory _BranchModel(
      {required final int id,
      required final String code,
      @JsonKey(name: "name")
          final String? description,
      @JsonKey(name: "series_code", defaultValue: "")
          final String? seriesCode,
      @JsonKey(name: "pricelist_code", defaultValue: "")
          final String? priceListCode}) = _$_BranchModel;

  factory _BranchModel.fromJson(Map<String, dynamic> json) =
      _$_BranchModel.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  @JsonKey(name: "name")
  String? get description;
  @override
  @JsonKey(name: "series_code", defaultValue: "")
  String? get seriesCode;
  @override
  @JsonKey(name: "pricelist_code", defaultValue: "")
  String? get priceListCode;
  @override
  @JsonKey(ignore: true)
  _$$_BranchModelCopyWith<_$_BranchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
