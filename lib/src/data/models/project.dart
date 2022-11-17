// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:alldocsarchive_admin_app/utils/firestore/timestamp_converter.dart';

part 'project.freezed.dart';
part 'project.g.dart';

/// Project model
@freezed
class Project with _$Project {
  /// Main Project model constructor
  const factory Project({
    required String id,
    required String userId,
    required String name,
    // @JsonKey(fromJson: TimestampConverter.fromJsonNullable)
    // DateTime? createdAt,
  }) = _Project;

  /// Create a [Project] from Json value
  factory Project.fromJson(Map<String, Object?> json) =>
      _$ProjectFromJson(json);

  /// Create a [Project] from Firestore data
  factory Project.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return Project.fromJson(data);
  }
}
