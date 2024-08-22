// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_country_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAllCountryDataResponse {
  KtList<AllCountryData> get allCountryDataList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAllCountryDataResponseCopyWith<GetAllCountryDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllCountryDataResponseCopyWith<$Res> {
  factory $GetAllCountryDataResponseCopyWith(GetAllCountryDataResponse value,
          $Res Function(GetAllCountryDataResponse) then) =
      _$GetAllCountryDataResponseCopyWithImpl<$Res, GetAllCountryDataResponse>;
  @useResult
  $Res call({KtList<AllCountryData> allCountryDataList});
}

/// @nodoc
class _$GetAllCountryDataResponseCopyWithImpl<$Res,
        $Val extends GetAllCountryDataResponse>
    implements $GetAllCountryDataResponseCopyWith<$Res> {
  _$GetAllCountryDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCountryDataList = null,
  }) {
    return _then(_value.copyWith(
      allCountryDataList: null == allCountryDataList
          ? _value.allCountryDataList
          : allCountryDataList // ignore: cast_nullable_to_non_nullable
              as KtList<AllCountryData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllCountryDataResponseImplCopyWith<$Res>
    implements $GetAllCountryDataResponseCopyWith<$Res> {
  factory _$$GetAllCountryDataResponseImplCopyWith(
          _$GetAllCountryDataResponseImpl value,
          $Res Function(_$GetAllCountryDataResponseImpl) then) =
      __$$GetAllCountryDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KtList<AllCountryData> allCountryDataList});
}

/// @nodoc
class __$$GetAllCountryDataResponseImplCopyWithImpl<$Res>
    extends _$GetAllCountryDataResponseCopyWithImpl<$Res,
        _$GetAllCountryDataResponseImpl>
    implements _$$GetAllCountryDataResponseImplCopyWith<$Res> {
  __$$GetAllCountryDataResponseImplCopyWithImpl(
      _$GetAllCountryDataResponseImpl _value,
      $Res Function(_$GetAllCountryDataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCountryDataList = null,
  }) {
    return _then(_$GetAllCountryDataResponseImpl(
      allCountryDataList: null == allCountryDataList
          ? _value.allCountryDataList
          : allCountryDataList // ignore: cast_nullable_to_non_nullable
              as KtList<AllCountryData>,
    ));
  }
}

/// @nodoc

class _$GetAllCountryDataResponseImpl implements _GetAllCountryDataResponse {
  _$GetAllCountryDataResponseImpl({required this.allCountryDataList});

  @override
  final KtList<AllCountryData> allCountryDataList;

  @override
  String toString() {
    return 'GetAllCountryDataResponse(allCountryDataList: $allCountryDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCountryDataResponseImpl &&
            (identical(other.allCountryDataList, allCountryDataList) ||
                other.allCountryDataList == allCountryDataList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allCountryDataList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCountryDataResponseImplCopyWith<_$GetAllCountryDataResponseImpl>
      get copyWith => __$$GetAllCountryDataResponseImplCopyWithImpl<
          _$GetAllCountryDataResponseImpl>(this, _$identity);
}

abstract class _GetAllCountryDataResponse implements GetAllCountryDataResponse {
  factory _GetAllCountryDataResponse(
          {required final KtList<AllCountryData> allCountryDataList}) =
      _$GetAllCountryDataResponseImpl;

  @override
  KtList<AllCountryData> get allCountryDataList;
  @override
  @JsonKey(ignore: true)
  _$$GetAllCountryDataResponseImplCopyWith<_$GetAllCountryDataResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
