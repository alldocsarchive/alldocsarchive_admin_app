// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_block.freezed.dart';
part 'theme_block.g.dart';

/// ThemeBlock model
@freezed
class ThemeBlock with _$ThemeBlock {
  /// Main ThemeBlock model constructor
  const factory ThemeBlock({
    required String id,
    required String userId,
    required String name,
  }) = _ThemeBlock;

  /// Create a [ThemeBlock] from Json value
  factory ThemeBlock.fromJson(Map<String, Object?> json) =>
      _$ThemeBlockFromJson(json);

  /// Create a [ThemeBlock] from Firestore data
  factory ThemeBlock.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return ThemeBlock.fromJson(data);
  }
}
