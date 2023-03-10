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

PaginatedResultGoodsIssue _$PaginatedResultGoodsIssueFromJson(
    Map<String, dynamic> json) {
  return _PaginatedResultGoodsIssue.fromJson(json);
}

/// @nodoc
mixin _$PaginatedResultGoodsIssue {
  List<GoodsIssueHeaderModel>? get data => throw _privateConstructorUsedError;
  PaginationModel? get pagination => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedResultGoodsIssueCopyWith<PaginatedResultGoodsIssue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedResultGoodsIssueCopyWith<$Res> {
  factory $PaginatedResultGoodsIssueCopyWith(PaginatedResultGoodsIssue value,
          $Res Function(PaginatedResultGoodsIssue) then) =
      _$PaginatedResultGoodsIssueCopyWithImpl<$Res, PaginatedResultGoodsIssue>;
  @useResult
  $Res call({List<GoodsIssueHeaderModel>? data, PaginationModel? pagination});

  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$PaginatedResultGoodsIssueCopyWithImpl<$Res,
        $Val extends PaginatedResultGoodsIssue>
    implements $PaginatedResultGoodsIssueCopyWith<$Res> {
  _$PaginatedResultGoodsIssueCopyWithImpl(this._value, this._then);

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
              as List<GoodsIssueHeaderModel>?,
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
abstract class _$$_PaginatedResultGoodsIssueCopyWith<$Res>
    implements $PaginatedResultGoodsIssueCopyWith<$Res> {
  factory _$$_PaginatedResultGoodsIssueCopyWith(
          _$_PaginatedResultGoodsIssue value,
          $Res Function(_$_PaginatedResultGoodsIssue) then) =
      __$$_PaginatedResultGoodsIssueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GoodsIssueHeaderModel>? data, PaginationModel? pagination});

  @override
  $PaginationModelCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$_PaginatedResultGoodsIssueCopyWithImpl<$Res>
    extends _$PaginatedResultGoodsIssueCopyWithImpl<$Res,
        _$_PaginatedResultGoodsIssue>
    implements _$$_PaginatedResultGoodsIssueCopyWith<$Res> {
  __$$_PaginatedResultGoodsIssueCopyWithImpl(
      _$_PaginatedResultGoodsIssue _value,
      $Res Function(_$_PaginatedResultGoodsIssue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? pagination = freezed,
  }) {
    return _then(_$_PaginatedResultGoodsIssue(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GoodsIssueHeaderModel>?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedResultGoodsIssue implements _PaginatedResultGoodsIssue {
  const _$_PaginatedResultGoodsIssue(
      {final List<GoodsIssueHeaderModel>? data = const [], this.pagination})
      : _data = data;

  factory _$_PaginatedResultGoodsIssue.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedResultGoodsIssueFromJson(json);

  final List<GoodsIssueHeaderModel>? _data;
  @override
  @JsonKey()
  List<GoodsIssueHeaderModel>? get data {
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
    return 'PaginatedResultGoodsIssue(data: $data, pagination: $pagination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedResultGoodsIssue &&
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
  _$$_PaginatedResultGoodsIssueCopyWith<_$_PaginatedResultGoodsIssue>
      get copyWith => __$$_PaginatedResultGoodsIssueCopyWithImpl<
          _$_PaginatedResultGoodsIssue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedResultGoodsIssueToJson(
      this,
    );
  }
}

abstract class _PaginatedResultGoodsIssue implements PaginatedResultGoodsIssue {
  const factory _PaginatedResultGoodsIssue(
      {final List<GoodsIssueHeaderModel>? data,
      final PaginationModel? pagination}) = _$_PaginatedResultGoodsIssue;

  factory _PaginatedResultGoodsIssue.fromJson(Map<String, dynamic> json) =
      _$_PaginatedResultGoodsIssue.fromJson;

  @override
  List<GoodsIssueHeaderModel>? get data;
  @override
  PaginationModel? get pagination;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedResultGoodsIssueCopyWith<_$_PaginatedResultGoodsIssue>
      get copyWith => throw _privateConstructorUsedError;
}
