// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'media.freezed.dart';
part 'media.g.dart';

/// Media model
@freezed
class Media with _$Media {
  /// Main Media model constructor
  const factory Media({
    required String id,
    required String userId,
    required String name,
  }) = _Media;

  /// Create a [Media] from Json value
  factory Media.fromJson(Map<String, Object?> json) => _$MediaFromJson(json);

  /// Create a [Media] from Firestore data
  factory Media.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return Media.fromJson(data);
  }
}
