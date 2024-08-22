// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flag_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlagData {
  String get png => throw _privateConstructorUsedError;
  String get svg => throw _privateConstructorUsedError;
  String get alt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlagDataCopyWith<FlagData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagDataCopyWith<$Res> {
  factory $FlagDataCopyWith(FlagData value, $Res Function(FlagData) then) =
      _$FlagDataCopyWithImpl<$Res, FlagData>;
  @useResult
  $Res call({String png, String svg, String alt});
}

/// @nodoc
class _$FlagDataCopyWithImpl<$Res, $Val extends FlagData>
    implements $FlagDataCopyWith<$Res> {
  _$FlagDataCopyWithImpl(this._value, this._then);

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
abstract class _$$FlagDataImplCopyWith<$Res>
    implements $FlagDataCopyWith<$Res> {
  factory _$$FlagDataImplCopyWith(
          _$FlagDataImpl value, $Res Function(_$FlagDataImpl) then) =
      __$$FlagDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String png, String svg, String alt});
}

/// @nodoc
class __$$FlagDataImplCopyWithImpl<$Res>
    extends _$FlagDataCopyWithImpl<$Res, _$FlagDataImpl>
    implements _$$FlagDataImplCopyWith<$Res> {
  __$$FlagDataImplCopyWithImpl(
      _$FlagDataImpl _value, $Res Function(_$FlagDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
    Object? svg = null,
    Object? alt = null,
  }) {
    return _then(_$FlagDataImpl(
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

class _$FlagDataImpl implements _FlagData {
  _$FlagDataImpl({required this.png, required this.svg, required this.alt});

  @override
  final String png;
  @override
  final String svg;
  @override
  final String alt;

  @override
  String toString() {
    return 'FlagData(png: $png, svg: $svg, alt: $alt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlagDataImpl &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.svg, svg) || other.svg == svg) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, png, svg, alt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlagDataImplCopyWith<_$FlagDataImpl> get copyWith =>
      __$$FlagDataImplCopyWithImpl<_$FlagDataImpl>(this, _$identity);
}

abstract class _FlagData implements FlagData {
  factory _FlagData(
      {required final String png,
      required final String svg,
      required final String alt}) = _$FlagDataImpl;

  @override
  String get png;
  @override
  String get svg;
  @override
  String get alt;
  @override
  @JsonKey(ignore: true)
  _$$FlagDataImplCopyWith<_$FlagDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
