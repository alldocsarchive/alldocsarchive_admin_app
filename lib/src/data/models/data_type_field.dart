// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_type_field.freezed.dart';
part 'data_type_field.g.dart';

/// DataTypeField model
@freezed
class DataTypeField with _$DataTypeField {
  /// Main DataTypeField model constructor
  const factory DataTypeField({
    required String id,
    required String userId,
    required String name,
  }) = _DataTypeField;

  /// Create a [DataTypeField] from Json value
  factory DataTypeField.fromJson(Map<String, Object?> json) =>
      _$DataTypeFieldFromJson(json);

  /// Create a [DataTypeField] from Firestore data
  factory DataTypeField.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return DataTypeField.fromJson(data);
  }
}
