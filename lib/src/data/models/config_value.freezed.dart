// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigValue _$ConfigValueFromJson(Map<String, dynamic> json) {
  return _ConfigValue.fromJson(json);
}

/// @nodoc
mixin _$ConfigValue {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigValueCopyWith<ConfigValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigValueCopyWith<$Res> {
  factory $ConfigValueCopyWith(
          ConfigValue value, $Res Function(ConfigValue) then) =
      _$ConfigValueCopyWithImpl<$Res>;
  $Res call({String id, String userId, String name});
}

/// @nodoc
class _$ConfigValueCopyWithImpl<$Res> implements $ConfigValueCopyWith<$Res> {
  _$ConfigValueCopyWithImpl(this._value, this._then);

  final ConfigValue _value;
  // ignore: unused_field
  final $Res Function(ConfigValue) _then;

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
abstract class _$$_ConfigValueCopyWith<$Res>
    implements $ConfigValueCopyWith<$Res> {
  factory _$$_ConfigValueCopyWith(
          _$_ConfigValue value, $Res Function(_$_ConfigValue) then) =
      __$$_ConfigValueCopyWithImpl<$Res>;
  @override
  $Res call({String id, String userId, String name});
}

/// @nodoc
class __$$_ConfigValueCopyWithImpl<$Res> extends _$ConfigValueCopyWithImpl<$Res>
    implements _$$_ConfigValueCopyWith<$Res> {
  __$$_ConfigValueCopyWithImpl(
      _$_ConfigValue _value, $Res Function(_$_ConfigValue) _then)
      : super(_value, (v) => _then(v as _$_ConfigValue));

  @override
  _$_ConfigValue get _value => super._value as _$_ConfigValue;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ConfigValue(
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
class _$_ConfigValue implements _ConfigValue {
  const _$_ConfigValue(
      {required this.id, required this.userId, required this.name});

  factory _$_ConfigValue.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigValueFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;

  @override
  String toString() {
    return 'ConfigValue(id: $id, userId: $userId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigValue &&
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
  _$$_ConfigValueCopyWith<_$_ConfigValue> get copyWith =>
      __$$_ConfigValueCopyWithImpl<_$_ConfigValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigValueToJson(
      this,
    );
  }
}

abstract class _ConfigValue implements ConfigValue {
  const factory _ConfigValue(
      {required final String id,
      required final String userId,
      required final String name}) = _$_ConfigValue;

  factory _ConfigValue.fromJson(Map<String, dynamic> json) =
      _$_ConfigValue.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigValueCopyWith<_$_ConfigValue> get copyWith =>
      throw _privateConstructorUsedError;
}
