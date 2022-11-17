// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_config_value.freezed.dart';
part 'local_config_value.g.dart';

/// LocalConfigValue model
@freezed
class LocalConfigValue with _$LocalConfigValue {
  /// Main LocalConfigValue model constructor
  const factory LocalConfigValue({
    required String id,
    required String userId,
    required String name,
  }) = _LocalConfigValue;

  /// Create a [LocalConfigValue] from Json value
  factory LocalConfigValue.fromJson(Map<String, Object?> json) =>
      _$LocalConfigValueFromJson(json);

  /// Create a [LocalConfigValue] from Firestore data
  factory LocalConfigValue.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return LocalConfigValue.fromJson(data);
  }
}
