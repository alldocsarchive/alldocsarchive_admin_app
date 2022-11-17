// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// User model
@freezed
class User with _$User {
  /// Main User model constructor
  const factory User({
    required String id,
    required String userId,
    required String name,
  }) = _User;

  /// Create a [User] from Json value
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  /// Create a [User] from Firestore data
  factory User.fromFirestore(String id, Map<String, dynamic> data) {
    data['id'] = id;
    return User.fromJson(data);
  }
}
