// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeBlock _$ThemeBlockFromJson(Map<String, dynamic> json) {
  return _ThemeBlock.fromJson(json);
}

/// @nodoc
mixin _$ThemeBlock {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeBlockCopyWith<ThemeBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBlockCopyWith<$Res> {
  factory $ThemeBlockCopyWith(
          ThemeBlock value, $Res Function(ThemeBlock) then) =
      _$ThemeBlockCopyWithImpl<$Res>;
  $Res call({String id, String userId, String name});
}

/// @nodoc
class _$ThemeBlockCopyWithImpl<$Res> implements $ThemeBlockCopyWith<$Res> {
  _$ThemeBlockCopyWithImpl(this._value, this._then);

  final ThemeBlock _value;
  // ignore: unused_field
  final $Res Function(ThemeBlock) _then;

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
abstract class _$$_ThemeBlockCopyWith<$Res>
    implements $ThemeBlockCopyWith<$Res> {
  factory _$$_ThemeBlockCopyWith(
          _$_ThemeBlock value, $Res Function(_$_ThemeBlock) then) =
      __$$_ThemeBlockCopyWithImpl<$Res>;
  @override
  $Res call({String id, String userId, String name});
}

/// @nodoc
class __$$_ThemeBlockCopyWithImpl<$Res> extends _$ThemeBlockCopyWithImpl<$Res>
    implements _$$_ThemeBlockCopyWith<$Res> {
  __$$_ThemeBlockCopyWithImpl(
      _$_ThemeBlock _value, $Res Function(_$_ThemeBlock) _then)
      : super(_value, (v) => _then(v as _$_ThemeBlock));

  @override
  _$_ThemeBlock get _value => super._value as _$_ThemeBlock;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ThemeBlock(
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
class _$_ThemeBlock implements _ThemeBlock {
  const _$_ThemeBlock(
      {required this.id, required this.userId, required this.name});

  factory _$_ThemeBlock.fromJson(Map<String, dynamic> json) =>
      _$$_ThemeBlockFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;

  @override
  String toString() {
    return 'ThemeBlock(id: $id, userId: $userId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeBlock &&
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
  _$$_ThemeBlockCopyWith<_$_ThemeBlock> get copyWith =>
      __$$_ThemeBlockCopyWithImpl<_$_ThemeBlock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ThemeBlockToJson(
      this,
    );
  }
}

abstract class _ThemeBlock implements ThemeBlock {
  const factory _ThemeBlock(
      {required final String id,
      required final String userId,
      required final String name}) = _$_ThemeBlock;

  factory _ThemeBlock.fromJson(Map<String, dynamic> json) =
      _$_ThemeBlock.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeBlockCopyWith<_$_ThemeBlock> get copyWith =>
      throw _privateConstructorUsedError;
}
