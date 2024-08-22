// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flag_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FlagDataDto _$FlagDataDtoFromJson(Map<String, dynamic> json) {
  return _FlagDataDto.fromJson(json);
}

/// @nodoc
mixin _$FlagDataDto {
  String get png => throw _privateConstructorUsedError;
  String get svg => throw _privateConstructorUsedError;
  String get alt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagDataDtoCopyWith<FlagDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagDataDtoCopyWith<$Res> {
  factory $FlagDataDtoCopyWith(
          FlagDataDto value, $Res Function(FlagDataDto) then) =
      _$FlagDataDtoCopyWithImpl<$Res, FlagDataDto>;
  @useResult
  $Res call({String png, String svg, String alt});
}

/// @nodoc
class _$FlagDataDtoCopyWithImpl<$Res, $Val extends FlagDataDto>
    implements $FlagDataDtoCopyWith<$Res> {
  _$FlagDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
    Object? svg = null,
    Object? alt = null,
  }) {
    return _then(_value.copyWith(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
      svg: null == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlagDataDtoImplCopyWith<$Res>
    implements $FlagDataDtoCopyWith<$Res> {
  factory _$$FlagDataDtoImplCopyWith(
          _$FlagDataDtoImpl value, $Res Function(_$FlagDataDtoImpl) then) =
      __$$FlagDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String png, String svg, String alt});
}

/// @nodoc
class __$$FlagDataDtoImplCopyWithImpl<$Res>
    extends _$FlagDataDtoCopyWithImpl<$Res, _$FlagDataDtoImpl>
    implements _$$FlagDataDtoImplCopyWith<$Res> {
  __$$FlagDataDtoImplCopyWithImpl(
      _$FlagDataDtoImpl _value, $Res Function(_$FlagDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
    Object? svg = null,
    Object? alt = null,
  }) {
    return _then(_$FlagDataDtoImpl(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
      svg: null == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlagDataDtoImpl extends _FlagDataDto {
  _$FlagDataDtoImpl({required this.png, required this.svg, required this.alt})
      : super._();

  factory _$FlagDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlagDataDtoImplFromJson(json);

  @override
  final String png;
  @override
  final String svg;
  @override
  final String alt;

  @override
  String toString() {
    return 'FlagDataDto(png: $png, svg: $svg, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagDataDtoImpl &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.svg, svg) || other.svg == svg) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, png, svg, alt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagDataDtoImplCopyWith<_$FlagDataDtoImpl> get copyWith =>
      __$$FlagDataDtoImplCopyWithImpl<_$FlagDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlagDataDtoImplToJson(
      this,
    );
  }
}

abstract class _FlagDataDto extends FlagDataDto {
  factory _FlagDataDto(
      {required final String png,
      required final String svg,
      required final String alt}) = _$FlagDataDtoImpl;
  _FlagDataDto._() : super._();

  factory _FlagDataDto.fromJson(Map<String, dynamic> json) =
      _$FlagDataDtoImpl.fromJson;

  @override
  String get png;
  @override
  String get svg;
  @override
  String get alt;
  @override
  @JsonKey(ignore: true)
  _$$FlagDataDtoImplCopyWith<_$FlagDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
