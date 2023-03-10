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

PaginationModel _$PaginationModelFromJson(Map<String, dynamic> json) {
  return _PaginationModel.fromJson(json);
}

/// @nodoc
mixin _$PaginationModel {
  @JsonKey(name: "next_page")
  int? get nextPage => throw _privateConstructorUsedError;
  @JsonKey(name: "per_page")
  int? get perPage => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  @JsonKey(name: "current_page")
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationModelCopyWith<PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationModelCopyWith<$Res> {
  factory $PaginationModelCopyWith(
          PaginationModel value, $Res Function(PaginationModel) then) =
      _$PaginationModelCopyWithImpl<$Res, PaginationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "next_page") int? nextPage,
      @JsonKey(name: "per_page") int? perPage,
      int total,
      int pages,
      @JsonKey(name: "current_page") int currentPage});
}

/// @nodoc
class _$PaginationModelCopyWithImpl<$Res, $Val extends PaginationModel>
    implements $PaginationModelCopyWith<$Res> {
  _$PaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? perPage = freezed,
    Object? total = null,
    Object? pages = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaginationModelCopyWith<$Res>
    implements $PaginationModelCopyWith<$Res> {
  factory _$$_PaginationModelCopyWith(
          _$_PaginationModel value, $Res Function(_$_PaginationModel) then) =
      __$$_PaginationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "next_page") int? nextPage,
      @JsonKey(name: "per_page") int? perPage,
      int total,
      int pages,
      @JsonKey(name: "current_page") int currentPage});
}

/// @nodoc
class __$$_PaginationModelCopyWithImpl<$Res>
    extends _$PaginationModelCopyWithImpl<$Res, _$_PaginationModel>
    implements _$$_PaginationModelCopyWith<$Res> {
  __$$_PaginationModelCopyWithImpl(
      _$_PaginationModel _value, $Res Function(_$_PaginationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nextPage = freezed,
    Object? perPage = freezed,
    Object? total = null,
    Object? pages = null,
    Object? currentPage = null,
  }) {
    return _then(_$_PaginationModel(
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      perPage: freezed == perPage
          ? _value.perPage
          : perPage // ignore: cast_nullable_to_non_nullable
              as int?,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationModel implements _PaginationModel {
  const _$_PaginationModel(
      {@JsonKey(name: "next_page") this.nextPage,
      @JsonKey(name: "per_page") this.perPage,
      required this.total,
      required this.pages,
      @JsonKey(name: "current_page") required this.currentPage});

  factory _$_PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationModelFromJson(json);

  @override
  @JsonKey(name: "next_page")
  final int? nextPage;
  @override
  @JsonKey(name: "per_page")
  final int? perPage;
  @override
  final int total;
  @override
  final int pages;
  @override
  @JsonKey(name: "current_page")
  final int currentPage;

  @override
  String toString() {
    return 'PaginationModel(nextPage: $nextPage, perPage: $perPage, total: $total, pages: $pages, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginationModel &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, nextPage, perPage, total, pages, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaginationModelCopyWith<_$_PaginationModel> get copyWith =>
      __$$_PaginationModelCopyWithImpl<_$_PaginationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationModelToJson(
      this,
    );
  }
}

abstract class _PaginationModel implements PaginationModel {
  const factory _PaginationModel(
          {@JsonKey(name: "next_page") final int? nextPage,
          @JsonKey(name: "per_page") final int? perPage,
          required final int total,
          required final int pages,
          @JsonKey(name: "current_page") required final int currentPage}) =
      _$_PaginationModel;

  factory _PaginationModel.fromJson(Map<String, dynamic> json) =
      _$_PaginationModel.fromJson;

  @override
  @JsonKey(name: "next_page")
  int? get nextPage;
  @override
  @JsonKey(name: "per_page")
  int? get perPage;
  @override
  int get total;
  @override
  int get pages;
  @override
  @JsonKey(name: "current_page")
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_PaginationModelCopyWith<_$_PaginationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
