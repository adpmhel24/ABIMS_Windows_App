// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvAdjustmentOutHeaderModel _$$_InvAdjustmentOutHeaderModelFromJson(
        Map<String, dynamic> json) =>
    _$_InvAdjustmentOutHeaderModel(
      id: json['id'] as int?,
      series: json['series'] as int?,
      seriescode: json['seriescode'] as String?,
      transnumber: json['transnumber'] as int?,
      transdate: json['transdate'] == null
          ? null
          : DateTime.parse(json['transdate'] as String),
      reference: json['reference'] as String?,
      objtype: json['objtype'] as int?,
      docstatus: json['docstatus'] as String?,
      sapNumber: json['sap_number'] as int?,
      remarks: json['remarks'] as String?,
      dateCreated: json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
      dateUpdated: json['date_updated'] == null
          ? null
          : DateTime.parse(json['date_updated'] as String),
      hashedId: json['hashed_id'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
      rows: json['rows'] == null
          ? []
          : InvAdjustmentOutHeaderModel.rowFromJson(json['rows'] as List),
    );

Map<String, dynamic> _$$_InvAdjustmentOutHeaderModelToJson(
    _$_InvAdjustmentOutHeaderModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('series', instance.series);
  writeNotNull('seriescode', instance.seriescode);
  writeNotNull('transnumber', instance.transnumber);
  writeNotNull('transdate', instance.transdate?.toIso8601String());
  writeNotNull('reference', instance.reference);
  writeNotNull('objtype', instance.objtype);
  writeNotNull('docstatus', instance.docstatus);
  writeNotNull('sap_number', instance.sapNumber);
  val['remarks'] = instance.remarks;
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  writeNotNull('date_updated', instance.dateUpdated?.toIso8601String());
  writeNotNull('hashed_id', instance.hashedId);
  val['isSelected'] = instance.isSelected;
  val['rows'] = InvAdjustmentOutHeaderModel.rowToJson(instance.rows);
  return val;
}
