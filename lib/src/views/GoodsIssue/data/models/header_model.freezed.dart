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

GoodsIssueHeaderModel _$GoodsIssueHeaderModelFromJson(
    Map<String, dynamic> json) {
  return _GoodsIssueHeaderModel.fromJson(json);
}

/// @nodoc
mixin _$GoodsIssueHeaderModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "series")
  int? get series => throw _privateConstructorUsedError;
  @JsonKey(name: "objtype")
  int? get objtype => throw _privateConstructorUsedError;
  @JsonKey(name: "seriescode")
  String? get seriescode => throw _privateConstructorUsedError;
  @JsonKey(name: "transnumber")
  int? get transnumber => throw _privateConstructorUsedError;
  @JsonKey(name: "transdate")
  DateTime? get transdate => throw _privateConstructorUsedError;
  @JsonKey(name: "reference")
  String? get reference => throw _privateConstructorUsedError;
  @JsonKey(name: "docstatus")
  String? get docstatus => throw _privateConstructorUsedError;
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: "sap_number")
  int? get sapNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "remarks")
  String? get remarks => throw _privateConstructorUsedError;
  @JsonKey(name: "created_by")
  int? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_by")
  int? get updatedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "canceled_by")
  int? get canceledBy => throw _privateConstructorUsedError;
  @JsonKey(name: "date_created")
  DateTime? get dateCreated => throw _privateConstructorUsedError;
  @JsonKey(name: "date_canceled")
  DateTime? get dateCanceled => throw _privateConstructorUsedError;
  @JsonKey(name: "date_updated")
  DateTime? get dateUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmed_by")
  int? get confirmedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "date_confirmed")
  DateTime? get dateConfirmed => throw _privateConstructorUsedError;
  @JsonKey(name: "confirm")
  bool? get confirm => throw _privateConstructorUsedError;
  @JsonKey(name: "hashed_id")
  String? get hashedId => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;
  @JsonKey(
      name: "issue_row",
      defaultValue: [],
      fromJson: GoodsIssueHeaderModel.rowFromJson,
      toJson: GoodsIssueHeaderModel.rowToJson)
  List<GoodsIssueRowModel>? get issueRow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoodsIssueHeaderModelCopyWith<GoodsIssueHeaderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoodsIssueHeaderModelCopyWith<$Res> {
  factory $GoodsIssueHeaderModelCopyWith(GoodsIssueHeaderModel value,
          $Res Function(GoodsIssueHeaderModel) then) =
      _$GoodsIssueHeaderModelCopyWithImpl<$Res, GoodsIssueHeaderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          int? id,
      @JsonKey(name: "series")
          int? series,
      @JsonKey(name: "objtype")
          int? objtype,
      @JsonKey(name: "seriescode")
          String? seriescode,
      @JsonKey(name: "transnumber")
          int? transnumber,
      @JsonKey(name: "transdate")
          DateTime? transdate,
      @JsonKey(name: "reference")
          String? reference,
      @JsonKey(name: "docstatus")
          String? docstatus,
      @JsonKey(name: "prod_order_id")
          int? prodOrderId,
      @JsonKey(name: "sap_number")
          int? sapNumber,
      @JsonKey(name: "remarks")
          String? remarks,
      @JsonKey(name: "created_by")
          int? createdBy,
      @JsonKey(name: "updated_by")
          int? updatedBy,
      @JsonKey(name: "canceled_by")
          int? canceledBy,
      @JsonKey(name: "date_created")
          DateTime? dateCreated,
      @JsonKey(name: "date_canceled")
          DateTime? dateCanceled,
      @JsonKey(name: "date_updated")
          DateTime? dateUpdated,
      @JsonKey(name: "confirmed_by")
          int? confirmedBy,
      @JsonKey(name: "date_confirmed")
          DateTime? dateConfirmed,
      @JsonKey(name: "confirm")
          bool? confirm,
      @JsonKey(name: "hashed_id")
          String? hashedId,
      bool? isSelected,
      @JsonKey(name: "issue_row", defaultValue: [], fromJson: GoodsIssueHeaderModel.rowFromJson, toJson: GoodsIssueHeaderModel.rowToJson)
          List<GoodsIssueRowModel>? issueRow});
}

/// @nodoc
class _$GoodsIssueHeaderModelCopyWithImpl<$Res,
        $Val extends GoodsIssueHeaderModel>
    implements $GoodsIssueHeaderModelCopyWith<$Res> {
  _$GoodsIssueHeaderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
    Object? objtype = freezed,
    Object? seriescode = freezed,
    Object? transnumber = freezed,
    Object? transdate = freezed,
    Object? reference = freezed,
    Object? docstatus = freezed,
    Object? prodOrderId = freezed,
    Object? sapNumber = freezed,
    Object? remarks = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? canceledBy = freezed,
    Object? dateCreated = freezed,
    Object? dateCanceled = freezed,
    Object? dateUpdated = freezed,
    Object? confirmedBy = freezed,
    Object? dateConfirmed = freezed,
    Object? confirm = freezed,
    Object? hashedId = freezed,
    Object? isSelected = freezed,
    Object? issueRow = freezed,
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
      objtype: freezed == objtype
          ? _value.objtype
          : objtype // ignore: cast_nullable_to_non_nullable
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
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as String?,
      prodOrderId: freezed == prodOrderId
          ? _value.prodOrderId
          : prodOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      sapNumber: freezed == sapNumber
          ? _value.sapNumber
          : sapNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      canceledBy: freezed == canceledBy
          ? _value.canceledBy
          : canceledBy // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCanceled: freezed == dateCanceled
          ? _value.dateCanceled
          : dateCanceled // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUpdated: freezed == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedBy: freezed == confirmedBy
          ? _value.confirmedBy
          : confirmedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      dateConfirmed: freezed == dateConfirmed
          ? _value.dateConfirmed
          : dateConfirmed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirm: freezed == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as bool?,
      hashedId: freezed == hashedId
          ? _value.hashedId
          : hashedId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      issueRow: freezed == issueRow
          ? _value.issueRow
          : issueRow // ignore: cast_nullable_to_non_nullable
              as List<GoodsIssueRowModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GoodsIssueHeaderModelCopyWith<$Res>
    implements $GoodsIssueHeaderModelCopyWith<$Res> {
  factory _$$_GoodsIssueHeaderModelCopyWith(_$_GoodsIssueHeaderModel value,
          $Res Function(_$_GoodsIssueHeaderModel) then) =
      __$$_GoodsIssueHeaderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id")
          int? id,
      @JsonKey(name: "series")
          int? series,
      @JsonKey(name: "objtype")
          int? objtype,
      @JsonKey(name: "seriescode")
          String? seriescode,
      @JsonKey(name: "transnumber")
          int? transnumber,
      @JsonKey(name: "transdate")
          DateTime? transdate,
      @JsonKey(name: "reference")
          String? reference,
      @JsonKey(name: "docstatus")
          String? docstatus,
      @JsonKey(name: "prod_order_id")
          int? prodOrderId,
      @JsonKey(name: "sap_number")
          int? sapNumber,
      @JsonKey(name: "remarks")
          String? remarks,
      @JsonKey(name: "created_by")
          int? createdBy,
      @JsonKey(name: "updated_by")
          int? updatedBy,
      @JsonKey(name: "canceled_by")
          int? canceledBy,
      @JsonKey(name: "date_created")
          DateTime? dateCreated,
      @JsonKey(name: "date_canceled")
          DateTime? dateCanceled,
      @JsonKey(name: "date_updated")
          DateTime? dateUpdated,
      @JsonKey(name: "confirmed_by")
          int? confirmedBy,
      @JsonKey(name: "date_confirmed")
          DateTime? dateConfirmed,
      @JsonKey(name: "confirm")
          bool? confirm,
      @JsonKey(name: "hashed_id")
          String? hashedId,
      bool? isSelected,
      @JsonKey(name: "issue_row", defaultValue: [], fromJson: GoodsIssueHeaderModel.rowFromJson, toJson: GoodsIssueHeaderModel.rowToJson)
          List<GoodsIssueRowModel>? issueRow});
}

/// @nodoc
class __$$_GoodsIssueHeaderModelCopyWithImpl<$Res>
    extends _$GoodsIssueHeaderModelCopyWithImpl<$Res, _$_GoodsIssueHeaderModel>
    implements _$$_GoodsIssueHeaderModelCopyWith<$Res> {
  __$$_GoodsIssueHeaderModelCopyWithImpl(_$_GoodsIssueHeaderModel _value,
      $Res Function(_$_GoodsIssueHeaderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? series = freezed,
    Object? objtype = freezed,
    Object? seriescode = freezed,
    Object? transnumber = freezed,
    Object? transdate = freezed,
    Object? reference = freezed,
    Object? docstatus = freezed,
    Object? prodOrderId = freezed,
    Object? sapNumber = freezed,
    Object? remarks = freezed,
    Object? createdBy = freezed,
    Object? updatedBy = freezed,
    Object? canceledBy = freezed,
    Object? dateCreated = freezed,
    Object? dateCanceled = freezed,
    Object? dateUpdated = freezed,
    Object? confirmedBy = freezed,
    Object? dateConfirmed = freezed,
    Object? confirm = freezed,
    Object? hashedId = freezed,
    Object? isSelected = freezed,
    Object? issueRow = freezed,
  }) {
    return _then(_$_GoodsIssueHeaderModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as int?,
      objtype: freezed == objtype
          ? _value.objtype
          : objtype // ignore: cast_nullable_to_non_nullable
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
      docstatus: freezed == docstatus
          ? _value.docstatus
          : docstatus // ignore: cast_nullable_to_non_nullable
              as String?,
      prodOrderId: freezed == prodOrderId
          ? _value.prodOrderId
          : prodOrderId // ignore: cast_nullable_to_non_nullable
              as int?,
      sapNumber: freezed == sapNumber
          ? _value.sapNumber
          : sapNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedBy: freezed == updatedBy
          ? _value.updatedBy
          : updatedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      canceledBy: freezed == canceledBy
          ? _value.canceledBy
          : canceledBy // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateCanceled: freezed == dateCanceled
          ? _value.dateCanceled
          : dateCanceled // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateUpdated: freezed == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirmedBy: freezed == confirmedBy
          ? _value.confirmedBy
          : confirmedBy // ignore: cast_nullable_to_non_nullable
              as int?,
      dateConfirmed: freezed == dateConfirmed
          ? _value.dateConfirmed
          : dateConfirmed // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      confirm: freezed == confirm
          ? _value.confirm
          : confirm // ignore: cast_nullable_to_non_nullable
              as bool?,
      hashedId: freezed == hashedId
          ? _value.hashedId
          : hashedId // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
      issueRow: freezed == issueRow
          ? _value._issueRow
          : issueRow // ignore: cast_nullable_to_non_nullable
              as List<GoodsIssueRowModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoodsIssueHeaderModel implements _GoodsIssueHeaderModel {
  const _$_GoodsIssueHeaderModel(
      {@JsonKey(name: "id")
          this.id,
      @JsonKey(name: "series")
          this.series,
      @JsonKey(name: "objtype")
          this.objtype,
      @JsonKey(name: "seriescode")
          this.seriescode,
      @JsonKey(name: "transnumber")
          this.transnumber,
      @JsonKey(name: "transdate")
          this.transdate,
      @JsonKey(name: "reference")
          this.reference,
      @JsonKey(name: "docstatus")
          this.docstatus,
      @JsonKey(name: "prod_order_id")
          this.prodOrderId,
      @JsonKey(name: "sap_number")
          this.sapNumber,
      @JsonKey(name: "remarks")
          this.remarks,
      @JsonKey(name: "created_by")
          this.createdBy,
      @JsonKey(name: "updated_by")
          this.updatedBy,
      @JsonKey(name: "canceled_by")
          this.canceledBy,
      @JsonKey(name: "date_created")
          this.dateCreated,
      @JsonKey(name: "date_canceled")
          this.dateCanceled,
      @JsonKey(name: "date_updated")
          this.dateUpdated,
      @JsonKey(name: "confirmed_by")
          this.confirmedBy,
      @JsonKey(name: "date_confirmed")
          this.dateConfirmed,
      @JsonKey(name: "confirm")
          this.confirm,
      @JsonKey(name: "hashed_id")
          this.hashedId,
      this.isSelected = false,
      @JsonKey(name: "issue_row", defaultValue: [], fromJson: GoodsIssueHeaderModel.rowFromJson, toJson: GoodsIssueHeaderModel.rowToJson)
          final List<GoodsIssueRowModel>? issueRow})
      : _issueRow = issueRow;

  factory _$_GoodsIssueHeaderModel.fromJson(Map<String, dynamic> json) =>
      _$$_GoodsIssueHeaderModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "series")
  final int? series;
  @override
  @JsonKey(name: "objtype")
  final int? objtype;
  @override
  @JsonKey(name: "seriescode")
  final String? seriescode;
  @override
  @JsonKey(name: "transnumber")
  final int? transnumber;
  @override
  @JsonKey(name: "transdate")
  final DateTime? transdate;
  @override
  @JsonKey(name: "reference")
  final String? reference;
  @override
  @JsonKey(name: "docstatus")
  final String? docstatus;
  @override
  @JsonKey(name: "prod_order_id")
  final int? prodOrderId;
  @override
  @JsonKey(name: "sap_number")
  final int? sapNumber;
  @override
  @JsonKey(name: "remarks")
  final String? remarks;
  @override
  @JsonKey(name: "created_by")
  final int? createdBy;
  @override
  @JsonKey(name: "updated_by")
  final int? updatedBy;
  @override
  @JsonKey(name: "canceled_by")
  final int? canceledBy;
  @override
  @JsonKey(name: "date_created")
  final DateTime? dateCreated;
  @override
  @JsonKey(name: "date_canceled")
  final DateTime? dateCanceled;
  @override
  @JsonKey(name: "date_updated")
  final DateTime? dateUpdated;
  @override
  @JsonKey(name: "confirmed_by")
  final int? confirmedBy;
  @override
  @JsonKey(name: "date_confirmed")
  final DateTime? dateConfirmed;
  @override
  @JsonKey(name: "confirm")
  final bool? confirm;
  @override
  @JsonKey(name: "hashed_id")
  final String? hashedId;
  @override
  @JsonKey()
  final bool? isSelected;
  final List<GoodsIssueRowModel>? _issueRow;
  @override
  @JsonKey(
      name: "issue_row",
      defaultValue: [],
      fromJson: GoodsIssueHeaderModel.rowFromJson,
      toJson: GoodsIssueHeaderModel.rowToJson)
  List<GoodsIssueRowModel>? get issueRow {
    final value = _issueRow;
    if (value == null) return null;
    if (_issueRow is EqualUnmodifiableListView) return _issueRow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GoodsIssueHeaderModel(id: $id, series: $series, objtype: $objtype, seriescode: $seriescode, transnumber: $transnumber, transdate: $transdate, reference: $reference, docstatus: $docstatus, prodOrderId: $prodOrderId, sapNumber: $sapNumber, remarks: $remarks, createdBy: $createdBy, updatedBy: $updatedBy, canceledBy: $canceledBy, dateCreated: $dateCreated, dateCanceled: $dateCanceled, dateUpdated: $dateUpdated, confirmedBy: $confirmedBy, dateConfirmed: $dateConfirmed, confirm: $confirm, hashedId: $hashedId, isSelected: $isSelected, issueRow: $issueRow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoodsIssueHeaderModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.objtype, objtype) || other.objtype == objtype) &&
            (identical(other.seriescode, seriescode) ||
                other.seriescode == seriescode) &&
            (identical(other.transnumber, transnumber) ||
                other.transnumber == transnumber) &&
            (identical(other.transdate, transdate) ||
                other.transdate == transdate) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.docstatus, docstatus) ||
                other.docstatus == docstatus) &&
            (identical(other.prodOrderId, prodOrderId) ||
                other.prodOrderId == prodOrderId) &&
            (identical(other.sapNumber, sapNumber) ||
                other.sapNumber == sapNumber) &&
            (identical(other.remarks, remarks) || other.remarks == remarks) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.updatedBy, updatedBy) ||
                other.updatedBy == updatedBy) &&
            (identical(other.canceledBy, canceledBy) ||
                other.canceledBy == canceledBy) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateCanceled, dateCanceled) ||
                other.dateCanceled == dateCanceled) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated) &&
            (identical(other.confirmedBy, confirmedBy) ||
                other.confirmedBy == confirmedBy) &&
            (identical(other.dateConfirmed, dateConfirmed) ||
                other.dateConfirmed == dateConfirmed) &&
            (identical(other.confirm, confirm) || other.confirm == confirm) &&
            (identical(other.hashedId, hashedId) ||
                other.hashedId == hashedId) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            const DeepCollectionEquality().equals(other._issueRow, _issueRow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        series,
        objtype,
        seriescode,
        transnumber,
        transdate,
        reference,
        docstatus,
        prodOrderId,
        sapNumber,
        remarks,
        createdBy,
        updatedBy,
        canceledBy,
        dateCreated,
        dateCanceled,
        dateUpdated,
        confirmedBy,
        dateConfirmed,
        confirm,
        hashedId,
        isSelected,
        const DeepCollectionEquality().hash(_issueRow)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GoodsIssueHeaderModelCopyWith<_$_GoodsIssueHeaderModel> get copyWith =>
      __$$_GoodsIssueHeaderModelCopyWithImpl<_$_GoodsIssueHeaderModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoodsIssueHeaderModelToJson(
      this,
    );
  }
}

abstract class _GoodsIssueHeaderModel implements GoodsIssueHeaderModel {
  const factory _GoodsIssueHeaderModel(
      {@JsonKey(name: "id")
          final int? id,
      @JsonKey(name: "series")
          final int? series,
      @JsonKey(name: "objtype")
          final int? objtype,
      @JsonKey(name: "seriescode")
          final String? seriescode,
      @JsonKey(name: "transnumber")
          final int? transnumber,
      @JsonKey(name: "transdate")
          final DateTime? transdate,
      @JsonKey(name: "reference")
          final String? reference,
      @JsonKey(name: "docstatus")
          final String? docstatus,
      @JsonKey(name: "prod_order_id")
          final int? prodOrderId,
      @JsonKey(name: "sap_number")
          final int? sapNumber,
      @JsonKey(name: "remarks")
          final String? remarks,
      @JsonKey(name: "created_by")
          final int? createdBy,
      @JsonKey(name: "updated_by")
          final int? updatedBy,
      @JsonKey(name: "canceled_by")
          final int? canceledBy,
      @JsonKey(name: "date_created")
          final DateTime? dateCreated,
      @JsonKey(name: "date_canceled")
          final DateTime? dateCanceled,
      @JsonKey(name: "date_updated")
          final DateTime? dateUpdated,
      @JsonKey(name: "confirmed_by")
          final int? confirmedBy,
      @JsonKey(name: "date_confirmed")
          final DateTime? dateConfirmed,
      @JsonKey(name: "confirm")
          final bool? confirm,
      @JsonKey(name: "hashed_id")
          final String? hashedId,
      final bool? isSelected,
      @JsonKey(name: "issue_row", defaultValue: [], fromJson: GoodsIssueHeaderModel.rowFromJson, toJson: GoodsIssueHeaderModel.rowToJson)
          final List<GoodsIssueRowModel>? issueRow}) = _$_GoodsIssueHeaderModel;

  factory _GoodsIssueHeaderModel.fromJson(Map<String, dynamic> json) =
      _$_GoodsIssueHeaderModel.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "series")
  int? get series;
  @override
  @JsonKey(name: "objtype")
  int? get objtype;
  @override
  @JsonKey(name: "seriescode")
  String? get seriescode;
  @override
  @JsonKey(name: "transnumber")
  int? get transnumber;
  @override
  @JsonKey(name: "transdate")
  DateTime? get transdate;
  @override
  @JsonKey(name: "reference")
  String? get reference;
  @override
  @JsonKey(name: "docstatus")
  String? get docstatus;
  @override
  @JsonKey(name: "prod_order_id")
  int? get prodOrderId;
  @override
  @JsonKey(name: "sap_number")
  int? get sapNumber;
  @override
  @JsonKey(name: "remarks")
  String? get remarks;
  @override
  @JsonKey(name: "created_by")
  int? get createdBy;
  @override
  @JsonKey(name: "updated_by")
  int? get updatedBy;
  @override
  @JsonKey(name: "canceled_by")
  int? get canceledBy;
  @override
  @JsonKey(name: "date_created")
  DateTime? get dateCreated;
  @override
  @JsonKey(name: "date_canceled")
  DateTime? get dateCanceled;
  @override
  @JsonKey(name: "date_updated")
  DateTime? get dateUpdated;
  @override
  @JsonKey(name: "confirmed_by")
  int? get confirmedBy;
  @override
  @JsonKey(name: "date_confirmed")
  DateTime? get dateConfirmed;
  @override
  @JsonKey(name: "confirm")
  bool? get confirm;
  @override
  @JsonKey(name: "hashed_id")
  String? get hashedId;
  @override
  bool? get isSelected;
  @override
  @JsonKey(
      name: "issue_row",
      defaultValue: [],
      fromJson: GoodsIssueHeaderModel.rowFromJson,
      toJson: GoodsIssueHeaderModel.rowToJson)
  List<GoodsIssueRowModel>? get issueRow;
  @override
  @JsonKey(ignore: true)
  _$$_GoodsIssueHeaderModelCopyWith<_$_GoodsIssueHeaderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
