// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoodsIssueHeaderModel _$$_GoodsIssueHeaderModelFromJson(
        Map<String, dynamic> json) =>
    _$_GoodsIssueHeaderModel(
      id: json['id'] as int?,
      series: json['series'] as int?,
      objtype: json['objtype'] as int?,
      seriescode: json['seriescode'] as String?,
      transnumber: json['transnumber'] as int?,
      transdate: json['transdate'] == null
          ? null
          : DateTime.parse(json['transdate'] as String),
      reference: json['reference'] as String?,
      docstatus: json['docstatus'] as String?,
      prodOrderId: json['prod_order_id'] as int?,
      sapNumber: json['sap_number'] as int?,
      remarks: json['remarks'] as String?,
      createdBy: json['created_by'] as int?,
      updatedBy: json['updated_by'] as int?,
      canceledBy: json['canceled_by'] as int?,
      dateCreated: json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
      dateCanceled: json['date_canceled'] == null
          ? null
          : DateTime.parse(json['date_canceled'] as String),
      dateUpdated: json['date_updated'] == null
          ? null
          : DateTime.parse(json['date_updated'] as String),
      confirmedBy: json['confirmed_by'] as int?,
      dateConfirmed: json['date_confirmed'] == null
          ? null
          : DateTime.parse(json['date_confirmed'] as String),
      confirm: json['confirm'] as bool?,
      hashedId: json['hashed_id'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
      issueRow: json['issue_row'] == null
          ? []
          : GoodsIssueHeaderModel.rowFromJson(json['issue_row'] as List),
    );

Map<String, dynamic> _$$_GoodsIssueHeaderModelToJson(
        _$_GoodsIssueHeaderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'series': instance.series,
      'objtype': instance.objtype,
      'seriescode': instance.seriescode,
      'transnumber': instance.transnumber,
      'transdate': instance.transdate?.toIso8601String(),
      'reference': instance.reference,
      'docstatus': instance.docstatus,
      'prod_order_id': instance.prodOrderId,
      'sap_number': instance.sapNumber,
      'remarks': instance.remarks,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
      'canceled_by': instance.canceledBy,
      'date_created': instance.dateCreated?.toIso8601String(),
      'date_canceled': instance.dateCanceled?.toIso8601String(),
      'date_updated': instance.dateUpdated?.toIso8601String(),
      'confirmed_by': instance.confirmedBy,
      'date_confirmed': instance.dateConfirmed?.toIso8601String(),
      'confirm': instance.confirm,
      'hashed_id': instance.hashedId,
      'isSelected': instance.isSelected,
      'issue_row': GoodsIssueHeaderModel.rowToJson(instance.issueRow),
    };
