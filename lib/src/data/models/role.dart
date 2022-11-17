// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.freezed.dart';
part 'role.g.dart';

/// Role model
@freezed
class Role with _$Role {
  /// Main Role model constructor
  const factory Role({
    required String id,
    required String userId,
    required String name,
  }) = _Role;

  /// Create a [Role] from Json value
  factory Role.fromJson(Map<String, Object?> json) => _$RoleFromJson(json);

  /// Create a [Role] from Firestore data
  factory Role.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return Role.fromJson(data);
  }
}
