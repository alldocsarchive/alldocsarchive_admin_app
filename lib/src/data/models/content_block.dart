// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_block.freezed.dart';
part 'content_block.g.dart';

/// ContentBlock model
@freezed
class ContentBlock with _$ContentBlock {
  /// Main ContentBlock model constructor
  const factory ContentBlock({
    required String id,
    required String userId,
    required String name,
  }) = _ContentBlock;

  /// Create a [ContentBlock] from Json value
  factory ContentBlock.fromJson(Map<String, Object?> json) =>
      _$ContentBlockFromJson(json);

  /// Create a [ContentBlock] from Firestore data
  factory ContentBlock.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return ContentBlock.fromJson(data);
  }
}
