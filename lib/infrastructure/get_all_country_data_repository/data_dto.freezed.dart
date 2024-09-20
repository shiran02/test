// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataDto _$DataDtoFromJson(Map<String, dynamic> json) {
  return _DataDto.fromJson(json);
}

/// @nodoc
mixin _$DataDto {
  String get id => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDtoCopyWith<DataDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDtoCopyWith<$Res> {
  factory $DataDtoCopyWith(DataDto value, $Res Function(DataDto) then) =
      _$DataDtoCopyWithImpl<$Res, DataDto>;
  @useResult
  $Res call({String id, int value});
}

/// @nodoc
class _$DataDtoCopyWithImpl<$Res, $Val extends DataDto>
    implements $DataDtoCopyWith<$Res> {
  _$DataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDtoImplCopyWith<$Res> implements $DataDtoCopyWith<$Res> {
  factory _$$DataDtoImplCopyWith(
          _$DataDtoImpl value, $Res Function(_$DataDtoImpl) then) =
      __$$DataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int value});
}

/// @nodoc
class __$$DataDtoImplCopyWithImpl<$Res>
    extends _$DataDtoCopyWithImpl<$Res, _$DataDtoImpl>
    implements _$$DataDtoImplCopyWith<$Res> {
  __$$DataDtoImplCopyWithImpl(
      _$DataDtoImpl _value, $Res Function(_$DataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$DataDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDtoImpl extends _DataDto {
  _$DataDtoImpl({required this.id, required this.value}) : super._();

  factory _$DataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDtoImplFromJson(json);

  @override
  final String id;
  @override
  final int value;

  @override
  String toString() {
    return 'DataDto(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDtoImplCopyWith<_$DataDtoImpl> get copyWith =>
      __$$DataDtoImplCopyWithImpl<_$DataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDtoImplToJson(
      this,
    );
  }
}

abstract class _DataDto extends DataDto {
  factory _DataDto({required final String id, required final int value}) =
      _$DataDtoImpl;
  _DataDto._() : super._();

  factory _DataDto.fromJson(Map<String, dynamic> json) = _$DataDtoImpl.fromJson;

  @override
  String get id;
  @override
  int get value;
  @override
  @JsonKey(ignore: true)
  _$$DataDtoImplCopyWith<_$DataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
