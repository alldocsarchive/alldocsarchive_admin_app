// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_value.freezed.dart';
part 'config_value.g.dart';

/// ConfigValue model
@freezed
class ConfigValue with _$ConfigValue {
  /// Main ConfigValue model constructor
  const factory ConfigValue({
    required String id,
    required String userId,
    required String name,
  }) = _ConfigValue;

  /// Create a [ConfigValue] from Json value
  factory ConfigValue.fromJson(Map<String, Object?> json) =>
      _$ConfigValueFromJson(json);

  /// Create a [ConfigValue] from Firestore data
  factory ConfigValue.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return ConfigValue.fromJson(data);
  }
}
