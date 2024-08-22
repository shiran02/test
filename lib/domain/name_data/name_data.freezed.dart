// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NameData {
  String get common => throw _privateConstructorUsedError;
  String get official => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NameDataCopyWith<NameData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameDataCopyWith<$Res> {
  factory $NameDataCopyWith(NameData value, $Res Function(NameData) then) =
      _$NameDataCopyWithImpl<$Res, NameData>;
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class _$NameDataCopyWithImpl<$Res, $Val extends NameData>
    implements $NameDataCopyWith<$Res> {
  _$NameDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_value.copyWith(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameDataImplCopyWith<$Res>
    implements $NameDataCopyWith<$Res> {
  factory _$$NameDataImplCopyWith(
          _$NameDataImpl value, $Res Function(_$NameDataImpl) then) =
      __$$NameDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class __$$NameDataImplCopyWithImpl<$Res>
    extends _$NameDataCopyWithImpl<$Res, _$NameDataImpl>
    implements _$$NameDataImplCopyWith<$Res> {
  __$$NameDataImplCopyWithImpl(
      _$NameDataImpl _value, $Res Function(_$NameDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_$NameDataImpl(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameDataImpl implements _NameData {
  _$NameDataImpl({required this.common, required this.official});

  @override
  final String common;
  @override
  final String official;

  @override
  String toString() {
    return 'NameData(common: $common, official: $official)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameDataImpl &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official));
  }

  @override
  int get hashCode => Object.hash(runtimeType, common, official);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameDataImplCopyWith<_$NameDataImpl> get copyWith =>
      __$$NameDataImplCopyWithImpl<_$NameDataImpl>(this, _$identity);
}

abstract class _NameData implements NameData {
  factory _NameData(
      {required final String common,
      required final String official}) = _$NameDataImpl;

  @override
  String get common;
  @override
  String get official;
  @override
  @JsonKey(ignore: true)
  _$$NameDataImplCopyWith<_$NameDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
