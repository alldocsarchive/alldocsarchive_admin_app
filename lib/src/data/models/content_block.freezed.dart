// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_block.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentBlock _$ContentBlockFromJson(Map<String, dynamic> json) {
  return _ContentBlock.fromJson(json);
}

/// @nodoc
mixin _$ContentBlock {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentBlockCopyWith<ContentBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentBlockCopyWith<$Res> {
  factory $ContentBlockCopyWith(
          ContentBlock value, $Res Function(ContentBlock) then) =
      _$ContentBlockCopyWithImpl<$Res>;
  $Res call({String id, String userId, String name});
}

/// @nodoc
class _$ContentBlockCopyWithImpl<$Res> implements $ContentBlockCopyWith<$Res> {
  _$ContentBlockCopyWithImpl(this._value, this._then);

  final ContentBlock _value;
  // ignore: unused_field
  final $Res Function(ContentBlock) _then;

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
abstract class _$$_ContentBlockCopyWith<$Res>
    implements $ContentBlockCopyWith<$Res> {
  factory _$$_ContentBlockCopyWith(
          _$_ContentBlock value, $Res Function(_$_ContentBlock) then) =
      __$$_ContentBlockCopyWithImpl<$Res>;
  @override
  $Res call({String id, String userId, String name});
}

/// @nodoc
class __$$_ContentBlockCopyWithImpl<$Res>
    extends _$ContentBlockCopyWithImpl<$Res>
    implements _$$_ContentBlockCopyWith<$Res> {
  __$$_ContentBlockCopyWithImpl(
      _$_ContentBlock _value, $Res Function(_$_ContentBlock) _then)
      : super(_value, (v) => _then(v as _$_ContentBlock));

  @override
  _$_ContentBlock get _value => super._value as _$_ContentBlock;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_ContentBlock(
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
class _$_ContentBlock implements _ContentBlock {
  const _$_ContentBlock(
      {required this.id, required this.userId, required this.name});

  factory _$_ContentBlock.fromJson(Map<String, dynamic> json) =>
      _$$_ContentBlockFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;

  @override
  String toString() {
    return 'ContentBlock(id: $id, userId: $userId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentBlock &&
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
  _$$_ContentBlockCopyWith<_$_ContentBlock> get copyWith =>
      __$$_ContentBlockCopyWithImpl<_$_ContentBlock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentBlockToJson(
      this,
    );
  }
}

abstract class _ContentBlock implements ContentBlock {
  const factory _ContentBlock(
      {required final String id,
      required final String userId,
      required final String name}) = _$_ContentBlock;

  factory _ContentBlock.fromJson(Map<String, dynamic> json) =
      _$_ContentBlock.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ContentBlockCopyWith<_$_ContentBlock> get copyWith =>
      throw _privateConstructorUsedError;
}
