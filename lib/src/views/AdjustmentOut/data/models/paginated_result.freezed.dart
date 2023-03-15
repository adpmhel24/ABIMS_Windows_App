// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedResultInvAdjOut _$PaginatedResultInvAdjOutFromJson(
    Map<String, dynamic> json) {
  return _PaginatedResultInvAdjOut.fromJson(json);
}

/// @nodoc
mixin _$PaginatedResultInvAdjOut {
  List<InvAdjustmentOutHeaderModel>? get data =>
      throw _privateConstructorUsedError;
  PaginationModel? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedResultInvAdjOutCopyWith<PaginatedResultInvAdjOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResultInvAdjOutCopyWith<$Res> {
  factory $PaginatedResultInvAdjOutCopyWith(PaginatedResultInvAdjOut value,
          $Res Function(PaginatedResultInvAdjOut) then) =
      _$PaginatedResultInvAdjOutCopyWithImpl<$Res, PaginatedResultInvAdjOut>;
  @useResult
  $Res call(
      {List<InvAdjustmentOutHeaderModel>? data, PaginationModel? pagination});

  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$PaginatedResultInvAdjOutCopyWithImpl<$Res,
        $Val extends PaginatedResultInvAdjOut>
    implements $PaginatedResultInvAdjOutCopyWith<$Res> {
  _$PaginatedResultInvAdjOutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<InvAdjustmentOutHeaderModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationModelCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PaginatedResultInvAdjOutCopyWith<$Res>
    implements $PaginatedResultInvAdjOutCopyWith<$Res> {
  factory _$$_PaginatedResultInvAdjOutCopyWith(
          _$_PaginatedResultInvAdjOut value,
          $Res Function(_$_PaginatedResultInvAdjOut) then) =
      __$$_PaginatedResultInvAdjOutCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<InvAdjustmentOutHeaderModel>? data, PaginationModel? pagination});

  @override
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_PaginatedResultInvAdjOutCopyWithImpl<$Res>
    extends _$PaginatedResultInvAdjOutCopyWithImpl<$Res,
        _$_PaginatedResultInvAdjOut>
    implements _$$_PaginatedResultInvAdjOutCopyWith<$Res> {
  __$$_PaginatedResultInvAdjOutCopyWithImpl(_$_PaginatedResultInvAdjOut _value,
      $Res Function(_$_PaginatedResultInvAdjOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_PaginatedResultInvAdjOut(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<InvAdjustmentOutHeaderModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedResultInvAdjOut implements _PaginatedResultInvAdjOut {
  const _$_PaginatedResultInvAdjOut(
      {final List<InvAdjustmentOutHeaderModel>? data, this.pagination})
      : _data = data;

  factory _$_PaginatedResultInvAdjOut.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedResultInvAdjOutFromJson(json);

  final List<InvAdjustmentOutHeaderModel>? _data;
  @override
  List<InvAdjustmentOutHeaderModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaginationModel? pagination;

  @override
  String toString() {
    return 'PaginatedResultInvAdjOut(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedResultInvAdjOut &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), pagination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginatedResultInvAdjOutCopyWith<_$_PaginatedResultInvAdjOut>
      get copyWith => __$$_PaginatedResultInvAdjOutCopyWithImpl<
          _$_PaginatedResultInvAdjOut>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedResultInvAdjOutToJson(
      this,
    );
  }
}

abstract class _PaginatedResultInvAdjOut implements PaginatedResultInvAdjOut {
  const factory _PaginatedResultInvAdjOut(
      {final List<InvAdjustmentOutHeaderModel>? data,
      final PaginationModel? pagination}) = _$_PaginatedResultInvAdjOut;

  factory _PaginatedResultInvAdjOut.fromJson(Map<String, dynamic> json) =
      _$_PaginatedResultInvAdjOut.fromJson;

  @override
  List<InvAdjustmentOutHeaderModel>? get data;
  @override
  PaginationModel? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedResultInvAdjOutCopyWith<_$_PaginatedResultInvAdjOut>
      get copyWith => throw _privateConstructorUsedError;
}
