import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

/// Timestamp converter for Firestore date
class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  @override
  DateTime fromJson(Timestamp value) => value.toDate();

  @override
  Timestamp toJson(DateTime value) => Timestamp.fromDate(value);

  ///
  static DateTime? fromJsonNullable(Timestamp? value) => value?.toDate();
}
