// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content.freezed.dart';
part 'content.g.dart';

/// Content model
@freezed
class Content with _$Content {
  /// Main Content model constructor
  const factory Content({
    required String id,
    required String userId,
    required String name,
  }) = _Content;

  /// Create a [Content] from Json value
  factory Content.fromJson(Map<String, Object?> json) =>
      _$ContentFromJson(json);

  /// Create a [Content] from Firestore data
  factory Content.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return Content.fromJson(data);
  }
}
