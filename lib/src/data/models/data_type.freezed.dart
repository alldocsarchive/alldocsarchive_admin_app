// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataType _$DataTypeFromJson(Map<String, dynamic> json) {
  return _DataType.fromJson(json);
}

/// @nodoc
mixin _$DataType {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataTypeCopyWith<DataType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTypeCopyWith<$Res> {
  factory $DataTypeCopyWith(DataType value, $Res Function(DataType) then) =
      _$DataTypeCopyWithImpl<$Res>;
  $Res call({String id, String userId, String name});
}

/// @nodoc
class _$DataTypeCopyWithImpl<$Res> implements $DataTypeCopyWith<$Res> {
  _$DataTypeCopyWithImpl(this._value, this._then);

  final DataType _value;
  // ignore: unused_field
  final $Res Function(DataType) _then;

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
abstract class _$$_DataTypeCopyWith<$Res> implements $DataTypeCopyWith<$Res> {
  factory _$$_DataTypeCopyWith(
          _$_DataType value, $Res Function(_$_DataType) then) =
      __$$_DataTypeCopyWithImpl<$Res>;
  @override
  $Res call({String id, String userId, String name});
}

/// @nodoc
class __$$_DataTypeCopyWithImpl<$Res> extends _$DataTypeCopyWithImpl<$Res>
    implements _$$_DataTypeCopyWith<$Res> {
  __$$_DataTypeCopyWithImpl(
      _$_DataType _value, $Res Function(_$_DataType) _then)
      : super(_value, (v) => _then(v as _$_DataType));

  @override
  _$_DataType get _value => super._value as _$_DataType;

  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DataType(
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
class _$_DataType implements _DataType {
  const _$_DataType(
      {required this.id, required this.userId, required this.name});

  factory _$_DataType.fromJson(Map<String, dynamic> json) =>
      _$$_DataTypeFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;

  @override
  String toString() {
    return 'DataType(id: $id, userId: $userId, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataType &&
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
  _$$_DataTypeCopyWith<_$_DataType> get copyWith =>
      __$$_DataTypeCopyWithImpl<_$_DataType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataTypeToJson(
      this,
    );
  }
}

abstract class _DataType implements DataType {
  const factory _DataType(
      {required final String id,
      required final String userId,
      required final String name}) = _$_DataType;

  factory _DataType.fromJson(Map<String, dynamic> json) = _$_DataType.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DataTypeCopyWith<_$_DataType> get copyWith =>
      throw _privateConstructorUsedError;
}
