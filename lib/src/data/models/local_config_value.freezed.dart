// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_config_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalConfigValue _$LocalConfigValueFromJson(Map<String, dynamic> json) {
  return _LocalConfigValue.fromJson(json);
}

/// @nodoc
mixin _$LocalConfigValue {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalConfigValueCopyWith<LocalConfigValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalConfigValueCopyWith<$Res> {
  factory $LocalConfigValueCopyWith(
          LocalConfigValue value, $Res Function(LocalConfigValue) then) =
      _$LocalConfigValueCopyWithImpl<$Res>;
  $Res call({String id, String userId, String name});
}

/// @nodoc
class _$LocalConfigValueCopyWithImpl<$Res>
    implements $LocalConfigValueCopyWith<$Res> {
  _$LocalConfigValueCopyWithImpl(this._value, this._then);

  final LocalConfigValue _value;
  // ignore: unused_field
  final $Res Function(LocalConfigValue) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalConfigValueCopyWith<$Res>
    implements $LocalConfigValueCopyWith<$Res> {
  factory _$$_LocalConfigValueCopyWith(
          _$_LocalConfigValue value, $Res Function(_$_LocalConfigValue) then) =
      __$$_LocalConfigValueCopyWithImpl<$Res>;
  @override
  $Res call({String id, String userId, String name});
}

/// @nodoc
class __$$_LocalConfigValueCopyWithImpl<$Res>
    extends _$LocalConfigValueCopyWithImpl<$Res>
    implements _$$_LocalConfigValueCopyWith<$Res> {
  __$$_LocalConfigValueCopyWithImpl(
      _$_LocalConfigValue _value, $Res Function(_$_LocalConfigValue) _then)
      : super(_value, (v) => _then(v as _$_LocalConfigValue));

  @override
  _$_LocalConfigValue get _value => super._value as _$_LocalConfigValue;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_LocalConfigValue(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalConfigValue implements _LocalConfigValue {
  const _$_LocalConfigValue(
      {required this.id, required this.userId, required this.name});

  factory _$_LocalConfigValue.fromJson(Map<String, dynamic> json) =>
      _$$_LocalConfigValueFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;

  @override
  String toString() {
    return 'LocalConfigValue(id: $id, userId: $userId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalConfigValue &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_LocalConfigValueCopyWith<_$_LocalConfigValue> get copyWith =>
      __$$_LocalConfigValueCopyWithImpl<_$_LocalConfigValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalConfigValueToJson(
      this,
    );
  }
}

abstract class _LocalConfigValue implements LocalConfigValue {
  const factory _LocalConfigValue(
      {required final String id,
      required final String userId,
      required final String name}) = _$_LocalConfigValue;

  factory _LocalConfigValue.fromJson(Map<String, dynamic> json) =
      _$_LocalConfigValue.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LocalConfigValueCopyWith<_$_LocalConfigValue> get copyWith =>
      throw _privateConstructorUsedError;
}
