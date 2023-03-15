// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'header_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvAdjustmentOutHeaderModel _$InvAdjustmentOutHeaderModelFromJson(
    Map<String, dynamic> json) {
  return _InvAdjustmentOutHeaderModel.fromJson(json);
}

/// @nodoc
mixin _$InvAdjustmentOutHeaderModel {
  @JsonKey(name: "id", includeIfNull: false)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "series", includeIfNull: false)
  int? get series => throw _privateConstructorUsedError;
  @JsonKey(name: "seriescode", includeIfNull: false)
  String? get seriescode => throw _privateConstructorUsedError;
  @JsonKey(name: "transnumber", includeIfNull: false)
  int? get transnumber => throw _privateConstructorUsedError;
  @JsonKey(name: "transdate", includeIfNull: false)
  DateTime? get transdate => throw _privateConstructorUsedError;
  @JsonKey(name: "reference", includeIfNull: false)
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: "objtype", includeIfNull: false)
  int? get objtype => throw _privateConstructorUsedError;
  @JsonKey(name: "docstatus", includeIfNull: false)
  String? get docstatus => throw _privateConstructorUsedError;
  @JsonKey(name: "sap_number", includeIfNull: false)
  int? get sapNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "date_created", includeIfNull: false)
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: "date_updated", includeIfNull: false)
  DateTime? get dateUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: "hashed_id", includeIfNull: false)
  String? get hashedId => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: InvAdjustmentOutHeaderModel.rowFromJson,
      toJson: InvAdjustmentOutHeaderModel.rowToJson,
      defaultValue: [])
  List<InvAdjustmentOutRowModel>? get rows =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvAdjustmentOutHeaderModelCopyWith<InvAdjustmentOutHeaderModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvAdjustmentOutHeaderModelCopyWith<$Res> {
  factory $InvAdjustmentOutHeaderModelCopyWith(
          InvAdjustmentOutHeaderModel value,
          $Res Function(InvAdjustmentOutHeaderModel) then) =
      _$InvAdjustmentOutHeaderModelCopyWithImpl<$Res,
          InvAdjustmentOutHeaderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id", includeIfNull: false)
          int? id,
      @JsonKey(name: "series", includeIfNull: false)
          int? series,
      @JsonKey(name: "seriescode", includeIfNull: false)
          String? seriescode,
      @JsonKey(name: "transnumber", includeIfNull: false)
          int? transnumber,
      @JsonKey(name: "transdate", includeIfNull: false)
          DateTime? transdate,
      @JsonKey(name: "reference", includeIfNull: false)
          String? reference,
      @JsonKey(name: "objtype", includeIfNull: false)
          int? objtype,
      @JsonKey(name: "docstatus", includeIfNull: false)
          String? docstatus,
      @JsonKey(name: "sap_number", includeIfNull: false)
          int? sapNumber,
      @JsonKey(name: "remarks")
          String? remarks,
      @JsonKey(name: "date_created", includeIfNull: false)
          DateTime? dateCreated,
      @JsonKey(name: "date_updated", includeIfNull: false)
          DateTime? dateUpdated,
      @JsonKey(name: "hashed_id", includeIfNull: false)
          String? hashedId,
      bool isSelected,
      @JsonKey(fromJson: InvAdjustmentOutHeaderModel.rowFromJson, toJson: InvAdjustmentOutHeaderModel.rowToJson, defaultValue: [])
          List<InvAdjustmentOutRowModel>? rows});
}

/// @nodoc
class _$InvAdjustmentOutHeaderModelCopyWithImpl<$Res,
        $Val extends InvAdjustmentOutHeaderModel>
    implements $InvAdjustmentOutHeaderModelCopyWith<$Res> {
  _$InvAdjustmentOutHeaderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
    Object? seriescode = freezed,
    Object? transnumber = freezed,
    Object? transdate = freezed,
    Object? reference = freezed,
    Object? objtype = freezed,
    Object? docstatus = freezed,
    Object? sapNumber = freezed,
    Object? remarks = freezed,
    Object? dateCreated = freezed,
    Object? dateUpdated = freezed,
    Object? hashedId = freezed,
    Object? isSelected = null,
    Object? rows = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as int?,
      seriescode: freezed == seriescode
          ? _value.seriescode
          : seriescode // ignore: cast_nullable_to_non_nullable
              as String?,
      transnumber: freezed == transnumber
          ? _value.transnumber
          : transnumber // ignore: cast_nullable_to_non_nullable
              as int?,
      transdate: freezed == transdate
          ? _value.transdate
          : transdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      objtype: freezed == objtype
          ? _value.objtype
          : objtype // ignore: cast_nullable_to_non_nullable
              as int?,
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as String?,
      sapNumber: freezed == sapNumber
          ? _value.sapNumber
          : sapNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUpdated: freezed == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hashedId: freezed == hashedId
          ? _value.hashedId
          : hashedId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      rows: freezed == rows
          ? _value.rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<InvAdjustmentOutRowModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvAdjustmentOutHeaderModelCopyWith<$Res>
    implements $InvAdjustmentOutHeaderModelCopyWith<$Res> {
  factory _$$_InvAdjustmentOutHeaderModelCopyWith(
          _$_InvAdjustmentOutHeaderModel value,
          $Res Function(_$_InvAdjustmentOutHeaderModel) then) =
      __$$_InvAdjustmentOutHeaderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id", includeIfNull: false)
          int? id,
      @JsonKey(name: "series", includeIfNull: false)
          int? series,
      @JsonKey(name: "seriescode", includeIfNull: false)
          String? seriescode,
      @JsonKey(name: "transnumber", includeIfNull: false)
          int? transnumber,
      @JsonKey(name: "transdate", includeIfNull: false)
          DateTime? transdate,
      @JsonKey(name: "reference", includeIfNull: false)
          String? reference,
      @JsonKey(name: "objtype", includeIfNull: false)
          int? objtype,
      @JsonKey(name: "docstatus", includeIfNull: false)
          String? docstatus,
      @JsonKey(name: "sap_number", includeIfNull: false)
          int? sapNumber,
      @JsonKey(name: "remarks")
          String? remarks,
      @JsonKey(name: "date_created", includeIfNull: false)
          DateTime? dateCreated,
      @JsonKey(name: "date_updated", includeIfNull: false)
          DateTime? dateUpdated,
      @JsonKey(name: "hashed_id", includeIfNull: false)
          String? hashedId,
      bool isSelected,
      @JsonKey(fromJson: InvAdjustmentOutHeaderModel.rowFromJson, toJson: InvAdjustmentOutHeaderModel.rowToJson, defaultValue: [])
          List<InvAdjustmentOutRowModel>? rows});
}

/// @nodoc
class __$$_InvAdjustmentOutHeaderModelCopyWithImpl<$Res>
    extends _$InvAdjustmentOutHeaderModelCopyWithImpl<$Res,
        _$_InvAdjustmentOutHeaderModel>
    implements _$$_InvAdjustmentOutHeaderModelCopyWith<$Res> {
  __$$_InvAdjustmentOutHeaderModelCopyWithImpl(
      _$_InvAdjustmentOutHeaderModel _value,
      $Res Function(_$_InvAdjustmentOutHeaderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
    Object? seriescode = freezed,
    Object? transnumber = freezed,
    Object? transdate = freezed,
    Object? reference = freezed,
    Object? objtype = freezed,
    Object? docstatus = freezed,
    Object? sapNumber = freezed,
    Object? remarks = freezed,
    Object? dateCreated = freezed,
    Object? dateUpdated = freezed,
    Object? hashedId = freezed,
    Object? isSelected = null,
    Object? rows = freezed,
  }) {
    return _then(_$_InvAdjustmentOutHeaderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as int?,
      seriescode: freezed == seriescode
          ? _value.seriescode
          : seriescode // ignore: cast_nullable_to_non_nullable
              as String?,
      transnumber: freezed == transnumber
          ? _value.transnumber
          : transnumber // ignore: cast_nullable_to_non_nullable
              as int?,
      transdate: freezed == transdate
          ? _value.transdate
          : transdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      objtype: freezed == objtype
          ? _value.objtype
          : objtype // ignore: cast_nullable_to_non_nullable
              as int?,
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as String?,
      sapNumber: freezed == sapNumber
          ? _value.sapNumber
          : sapNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUpdated: freezed == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      hashedId: freezed == hashedId
          ? _value.hashedId
          : hashedId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      rows: freezed == rows
          ? _value._rows
          : rows // ignore: cast_nullable_to_non_nullable
              as List<InvAdjustmentOutRowModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvAdjustmentOutHeaderModel implements _InvAdjustmentOutHeaderModel {
  const _$_InvAdjustmentOutHeaderModel(
      {@JsonKey(name: "id", includeIfNull: false)
          this.id,
      @JsonKey(name: "series", includeIfNull: false)
          this.series,
      @JsonKey(name: "seriescode", includeIfNull: false)
          this.seriescode,
      @JsonKey(name: "transnumber", includeIfNull: false)
          this.transnumber,
      @JsonKey(name: "transdate", includeIfNull: false)
          this.transdate,
      @JsonKey(name: "reference", includeIfNull: false)
          this.reference,
      @JsonKey(name: "objtype", includeIfNull: false)
          this.objtype,
      @JsonKey(name: "docstatus", includeIfNull: false)
          this.docstatus,
      @JsonKey(name: "sap_number", includeIfNull: false)
          this.sapNumber,
      @JsonKey(name: "remarks")
          this.remarks,
      @JsonKey(name: "date_created", includeIfNull: false)
          this.dateCreated,
      @JsonKey(name: "date_updated", includeIfNull: false)
          this.dateUpdated,
      @JsonKey(name: "hashed_id", includeIfNull: false)
          this.hashedId,
      this.isSelected = false,
      @JsonKey(fromJson: InvAdjustmentOutHeaderModel.rowFromJson, toJson: InvAdjustmentOutHeaderModel.rowToJson, defaultValue: [])
          final List<InvAdjustmentOutRowModel>? rows})
      : _rows = rows;

  factory _$_InvAdjustmentOutHeaderModel.fromJson(Map<String, dynamic> json) =>
      _$$_InvAdjustmentOutHeaderModelFromJson(json);

  @override
  @JsonKey(name: "id", includeIfNull: false)
  final int? id;
  @override
  @JsonKey(name: "series", includeIfNull: false)
  final int? series;
  @override
  @JsonKey(name: "seriescode", includeIfNull: false)
  final String? seriescode;
  @override
  @JsonKey(name: "transnumber", includeIfNull: false)
  final int? transnumber;
  @override
  @JsonKey(name: "transdate", includeIfNull: false)
  final DateTime? transdate;
  @override
  @JsonKey(name: "reference", includeIfNull: false)
  final String? reference;
  @override
  @JsonKey(name: "objtype", includeIfNull: false)
  final int? objtype;
  @override
  @JsonKey(name: "docstatus", includeIfNull: false)
  final String? docstatus;
  @override
  @JsonKey(name: "sap_number", includeIfNull: false)
  final int? sapNumber;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
  @override
  @JsonKey(name: "date_created", includeIfNull: false)
  final DateTime? dateCreated;
  @override
  @JsonKey(name: "date_updated", includeIfNull: false)
  final DateTime? dateUpdated;
  @override
  @JsonKey(name: "hashed_id", includeIfNull: false)
  final String? hashedId;
  @override
  @JsonKey()
  final bool isSelected;
  final List<InvAdjustmentOutRowModel>? _rows;
  @override
  @JsonKey(
      fromJson: InvAdjustmentOutHeaderModel.rowFromJson,
      toJson: InvAdjustmentOutHeaderModel.rowToJson,
      defaultValue: [])
  List<InvAdjustmentOutRowModel>? get rows {
    final value = _rows;
    if (value == null) return null;
    if (_rows is EqualUnmodifiableListView) return _rows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvAdjustmentOutHeaderModel(id: $id, series: $series, seriescode: $seriescode, transnumber: $transnumber, transdate: $transdate, reference: $reference, objtype: $objtype, docstatus: $docstatus, sapNumber: $sapNumber, remarks: $remarks, dateCreated: $dateCreated, dateUpdated: $dateUpdated, hashedId: $hashedId, isSelected: $isSelected, rows: $rows)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvAdjustmentOutHeaderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.seriescode, seriescode) ||
                other.seriescode == seriescode) &&
            (identical(other.transnumber, transnumber) ||
                other.transnumber == transnumber) &&
            (identical(other.transdate, transdate) ||
                other.transdate == transdate) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.objtype, objtype) || other.objtype == objtype) &&
            (identical(other.docstatus, docstatus) ||
                other.docstatus == docstatus) &&
            (identical(other.sapNumber, sapNumber) ||
                other.sapNumber == sapNumber) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            (identical(other.hashedId, hashedId) ||
                other.hashedId == hashedId) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            const DeepCollectionEquality().equals(other._rows, _rows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      series,
      seriescode,
      transnumber,
      transdate,
      reference,
      objtype,
      docstatus,
      sapNumber,
      remarks,
      dateCreated,
      dateUpdated,
      hashedId,
      isSelected,
      const DeepCollectionEquality().hash(_rows));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvAdjustmentOutHeaderModelCopyWith<_$_InvAdjustmentOutHeaderModel>
      get copyWith => __$$_InvAdjustmentOutHeaderModelCopyWithImpl<
          _$_InvAdjustmentOutHeaderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvAdjustmentOutHeaderModelToJson(
      this,
    );
  }
}

abstract class _InvAdjustmentOutHeaderModel
    implements InvAdjustmentOutHeaderModel {
  const factory _InvAdjustmentOutHeaderModel(
      {@JsonKey(name: "id", includeIfNull: false)
          final int? id,
      @JsonKey(name: "series", includeIfNull: false)
          final int? series,
      @JsonKey(name: "seriescode", includeIfNull: false)
          final String? seriescode,
      @JsonKey(name: "transnumber", includeIfNull: false)
          final int? transnumber,
      @JsonKey(name: "transdate", includeIfNull: false)
          final DateTime? transdate,
      @JsonKey(name: "reference", includeIfNull: false)
          final String? reference,
      @JsonKey(name: "objtype", includeIfNull: false)
          final int? objtype,
      @JsonKey(name: "docstatus", includeIfNull: false)
          final String? docstatus,
      @JsonKey(name: "sap_number", includeIfNull: false)
          final int? sapNumber,
      @JsonKey(name: "remarks")
          final String? remarks,
      @JsonKey(name: "date_created", includeIfNull: false)
          final DateTime? dateCreated,
      @JsonKey(name: "date_updated", includeIfNull: false)
          final DateTime? dateUpdated,
      @JsonKey(name: "hashed_id", includeIfNull: false)
          final String? hashedId,
      final bool isSelected,
      @JsonKey(fromJson: InvAdjustmentOutHeaderModel.rowFromJson, toJson: InvAdjustmentOutHeaderModel.rowToJson, defaultValue: [])
          final List<InvAdjustmentOutRowModel>? rows}) = _$_InvAdjustmentOutHeaderModel;

  factory _InvAdjustmentOutHeaderModel.fromJson(Map<String, dynamic> json) =
      _$_InvAdjustmentOutHeaderModel.fromJson;

  @override
  @JsonKey(name: "id", includeIfNull: false)
  int? get id;
  @override
  @JsonKey(name: "series", includeIfNull: false)
  int? get series;
  @override
  @JsonKey(name: "seriescode", includeIfNull: false)
  String? get seriescode;
  @override
  @JsonKey(name: "transnumber", includeIfNull: false)
  int? get transnumber;
  @override
  @JsonKey(name: "transdate", includeIfNull: false)
  DateTime? get transdate;
  @override
  @JsonKey(name: "reference", includeIfNull: false)
  String? get reference;
  @override
  @JsonKey(name: "objtype", includeIfNull: false)
  int? get objtype;
  @override
  @JsonKey(name: "docstatus", includeIfNull: false)
  String? get docstatus;
  @override
  @JsonKey(name: "sap_number", includeIfNull: false)
  int? get sapNumber;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
  @override
  @JsonKey(name: "date_created", includeIfNull: false)
  DateTime? get dateCreated;
  @override
  @JsonKey(name: "date_updated", includeIfNull: false)
  DateTime? get dateUpdated;
  @override
  @JsonKey(name: "hashed_id", includeIfNull: false)
  String? get hashedId;
  @override
  bool get isSelected;
  @override
  @JsonKey(
      fromJson: InvAdjustmentOutHeaderModel.rowFromJson,
      toJson: InvAdjustmentOutHeaderModel.rowToJson,
      defaultValue: [])
  List<InvAdjustmentOutRowModel>? get rows;
  @override
  @JsonKey(ignore: true)
  _$$_InvAdjustmentOutHeaderModelCopyWith<_$_InvAdjustmentOutHeaderModel>
      get copyWith => throw _privateConstructorUsedError;
}
