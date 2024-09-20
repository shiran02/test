// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'out_put_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OutPutResponseDto _$OutPutResponseDtoFromJson(Map<String, dynamic> json) {
  return _OutPutResponseDto.fromJson(json);
}

/// @nodoc
mixin _$OutPutResponseDto {
  bool get success => throw _privateConstructorUsedError;
  List<DataDto> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OutPutResponseDtoCopyWith<OutPutResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutPutResponseDtoCopyWith<$Res> {
  factory $OutPutResponseDtoCopyWith(
          OutPutResponseDto value, $Res Function(OutPutResponseDto) then) =
      _$OutPutResponseDtoCopyWithImpl<$Res, OutPutResponseDto>;
  @useResult
  $Res call({bool success, List<DataDto> data});
}

/// @nodoc
class _$OutPutResponseDtoCopyWithImpl<$Res, $Val extends OutPutResponseDto>
    implements $OutPutResponseDtoCopyWith<$Res> {
  _$OutPutResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OutPutResponseDtoImplCopyWith<$Res>
    implements $OutPutResponseDtoCopyWith<$Res> {
  factory _$$OutPutResponseDtoImplCopyWith(_$OutPutResponseDtoImpl value,
          $Res Function(_$OutPutResponseDtoImpl) then) =
      __$$OutPutResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<DataDto> data});
}

/// @nodoc
class __$$OutPutResponseDtoImplCopyWithImpl<$Res>
    extends _$OutPutResponseDtoCopyWithImpl<$Res, _$OutPutResponseDtoImpl>
    implements _$$OutPutResponseDtoImplCopyWith<$Res> {
  __$$OutPutResponseDtoImplCopyWithImpl(_$OutPutResponseDtoImpl _value,
      $Res Function(_$OutPutResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
  }) {
    return _then(_$OutPutResponseDtoImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OutPutResponseDtoImpl extends _OutPutResponseDto {
  _$OutPutResponseDtoImpl(
      {required this.success, required final List<DataDto> data})
      : _data = data,
        super._();

  factory _$OutPutResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OutPutResponseDtoImplFromJson(json);

  @override
  final bool success;
  final List<DataDto> _data;
  @override
  List<DataDto> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'OutPutResponseDto(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutPutResponseDtoImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OutPutResponseDtoImplCopyWith<_$OutPutResponseDtoImpl> get copyWith =>
      __$$OutPutResponseDtoImplCopyWithImpl<_$OutPutResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OutPutResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _OutPutResponseDto extends OutPutResponseDto {
  factory _OutPutResponseDto(
      {required final bool success,
      required final List<DataDto> data}) = _$OutPutResponseDtoImpl;
  _OutPutResponseDto._() : super._();

  factory _OutPutResponseDto.fromJson(Map<String, dynamic> json) =
      _$OutPutResponseDtoImpl.fromJson;

  @override
  bool get success;
  @override
  List<DataDto> get data;
  @override
  @JsonKey(ignore: true)
  _$$OutPutResponseDtoImplCopyWith<_$OutPutResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
