// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_type.freezed.dart';
part 'data_type.g.dart';

/// DataType model
@freezed
class DataType with _$DataType {
  /// Main DataType model constructor
  const factory DataType({
    required String id,
    required String userId,
    required String name,
  }) = _DataType;

  /// Create a [DataType] from Json value
  factory DataType.fromJson(Map<String, Object?> json) =>
      _$DataTypeFromJson(json);

  /// Create a [DataType] from Firestore data
  factory DataType.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return DataType.fromJson(data);
  }
}
