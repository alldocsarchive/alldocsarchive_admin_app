// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme.freezed.dart';
part 'theme.g.dart';

/// Theme model
@freezed
class Theme with _$Theme {
  /// Main Theme model constructor
  const factory Theme({
    required String id,
    required String userId,
    required String name,
  }) = _Theme;

  /// Create a [Theme] from Json value
  factory Theme.fromJson(Map<String, Object?> json) => _$ThemeFromJson(json);

  /// Create a [Theme] from Firestore data
  factory Theme.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return Theme.fromJson(data);
  }
}
