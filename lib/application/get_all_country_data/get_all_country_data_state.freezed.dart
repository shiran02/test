// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_country_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllCountryDataState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get value => throw _privateConstructorUsedError;
  Option<Failure> get responseFailure => throw _privateConstructorUsedError;
  KtList<Data> get outPutList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAllCountryDataStateCopyWith<GetAllCountryDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllCountryDataStateCopyWith<$Res> {
  factory $GetAllCountryDataStateCopyWith(GetAllCountryDataState value,
          $Res Function(GetAllCountryDataState) then) =
      _$GetAllCountryDataStateCopyWithImpl<$Res, GetAllCountryDataState>;
  @useResult
  $Res call(
      {bool isLoading,
      int value,
      Option<Failure> responseFailure,
      KtList<Data> outPutList});
}

/// @nodoc
class _$GetAllCountryDataStateCopyWithImpl<$Res,
        $Val extends GetAllCountryDataState>
    implements $GetAllCountryDataStateCopyWith<$Res> {
  _$GetAllCountryDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? value = null,
    Object? responseFailure = null,
    Object? outPutList = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      responseFailure: null == responseFailure
          ? _value.responseFailure
          : responseFailure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      outPutList: null == outPutList
          ? _value.outPutList
          : outPutList // ignore: cast_nullable_to_non_nullable
              as KtList<Data>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllCountryDataStateImplCopyWith<$Res>
    implements $GetAllCountryDataStateCopyWith<$Res> {
  factory _$$GetAllCountryDataStateImplCopyWith(
          _$GetAllCountryDataStateImpl value,
          $Res Function(_$GetAllCountryDataStateImpl) then) =
      __$$GetAllCountryDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int value,
      Option<Failure> responseFailure,
      KtList<Data> outPutList});
}

/// @nodoc
class __$$GetAllCountryDataStateImplCopyWithImpl<$Res>
    extends _$GetAllCountryDataStateCopyWithImpl<$Res,
        _$GetAllCountryDataStateImpl>
    implements _$$GetAllCountryDataStateImplCopyWith<$Res> {
  __$$GetAllCountryDataStateImplCopyWithImpl(
      _$GetAllCountryDataStateImpl _value,
      $Res Function(_$GetAllCountryDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? value = null,
    Object? responseFailure = null,
    Object? outPutList = null,
  }) {
    return _then(_$GetAllCountryDataStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      responseFailure: null == responseFailure
          ? _value.responseFailure
          : responseFailure // ignore: cast_nullable_to_non_nullable
              as Option<Failure>,
      outPutList: null == outPutList
          ? _value.outPutList
          : outPutList // ignore: cast_nullable_to_non_nullable
              as KtList<Data>,
    ));
  }
}

/// @nodoc

class _$GetAllCountryDataStateImpl implements _GetAllCountryDataState {
  _$GetAllCountryDataStateImpl(
      {required this.isLoading,
      required this.value,
      required this.responseFailure,
      required this.outPutList});

  @override
  final bool isLoading;
  @override
  final int value;
  @override
  final Option<Failure> responseFailure;
  @override
  final KtList<Data> outPutList;

  @override
  String toString() {
    return 'GetAllCountryDataState(isLoading: $isLoading, value: $value, responseFailure: $responseFailure, outPutList: $outPutList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCountryDataStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.responseFailure, responseFailure) ||
                other.responseFailure == responseFailure) &&
            (identical(other.outPutList, outPutList) ||
                other.outPutList == outPutList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, value, responseFailure, outPutList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCountryDataStateImplCopyWith<_$GetAllCountryDataStateImpl>
      get copyWith => __$$GetAllCountryDataStateImplCopyWithImpl<
          _$GetAllCountryDataStateImpl>(this, _$identity);
}

abstract class _GetAllCountryDataState implements GetAllCountryDataState {
  factory _GetAllCountryDataState(
      {required final bool isLoading,
      required final int value,
      required final Option<Failure> responseFailure,
      required final KtList<Data> outPutList}) = _$GetAllCountryDataStateImpl;

  @override
  bool get isLoading;
  @override
  int get value;
  @override
  Option<Failure> get responseFailure;
  @override
  KtList<Data> get outPutList;
  @override
  @JsonKey(ignore: true)
  _$$GetAllCountryDataStateImplCopyWith<_$GetAllCountryDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
