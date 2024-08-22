// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_country_data_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAllCountryResponseDto _$GetAllCountryResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _GetAllCountryResponseDto.fromJson(json);
}

/// @nodoc
mixin _$GetAllCountryResponseDto {
  List<AllCountryDataDto> get allCountryDataList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllCountryResponseDtoCopyWith<GetAllCountryResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllCountryResponseDtoCopyWith<$Res> {
  factory $GetAllCountryResponseDtoCopyWith(GetAllCountryResponseDto value,
          $Res Function(GetAllCountryResponseDto) then) =
      _$GetAllCountryResponseDtoCopyWithImpl<$Res, GetAllCountryResponseDto>;
  @useResult
  $Res call({List<AllCountryDataDto> allCountryDataList});
}

/// @nodoc
class _$GetAllCountryResponseDtoCopyWithImpl<$Res,
        $Val extends GetAllCountryResponseDto>
    implements $GetAllCountryResponseDtoCopyWith<$Res> {
  _$GetAllCountryResponseDtoCopyWithImpl(this._value, this._then);

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
              as List<AllCountryDataDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllCountryResponseDtoImplCopyWith<$Res>
    implements $GetAllCountryResponseDtoCopyWith<$Res> {
  factory _$$GetAllCountryResponseDtoImplCopyWith(
          _$GetAllCountryResponseDtoImpl value,
          $Res Function(_$GetAllCountryResponseDtoImpl) then) =
      __$$GetAllCountryResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<AllCountryDataDto> allCountryDataList});
}

/// @nodoc
class __$$GetAllCountryResponseDtoImplCopyWithImpl<$Res>
    extends _$GetAllCountryResponseDtoCopyWithImpl<$Res,
        _$GetAllCountryResponseDtoImpl>
    implements _$$GetAllCountryResponseDtoImplCopyWith<$Res> {
  __$$GetAllCountryResponseDtoImplCopyWithImpl(
      _$GetAllCountryResponseDtoImpl _value,
      $Res Function(_$GetAllCountryResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allCountryDataList = null,
  }) {
    return _then(_$GetAllCountryResponseDtoImpl(
      allCountryDataList: null == allCountryDataList
          ? _value._allCountryDataList
          : allCountryDataList // ignore: cast_nullable_to_non_nullable
              as List<AllCountryDataDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllCountryResponseDtoImpl extends _GetAllCountryResponseDto {
  _$GetAllCountryResponseDtoImpl(
      {required final List<AllCountryDataDto> allCountryDataList})
      : _allCountryDataList = allCountryDataList,
        super._();

  factory _$GetAllCountryResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllCountryResponseDtoImplFromJson(json);

  final List<AllCountryDataDto> _allCountryDataList;
  @override
  List<AllCountryDataDto> get allCountryDataList {
    if (_allCountryDataList is EqualUnmodifiableListView)
      return _allCountryDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allCountryDataList);
  }

  @override
  String toString() {
    return 'GetAllCountryResponseDto(allCountryDataList: $allCountryDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCountryResponseDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._allCountryDataList, _allCountryDataList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_allCountryDataList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCountryResponseDtoImplCopyWith<_$GetAllCountryResponseDtoImpl>
      get copyWith => __$$GetAllCountryResponseDtoImplCopyWithImpl<
          _$GetAllCountryResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllCountryResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _GetAllCountryResponseDto extends GetAllCountryResponseDto {
  factory _GetAllCountryResponseDto(
          {required final List<AllCountryDataDto> allCountryDataList}) =
      _$GetAllCountryResponseDtoImpl;
  _GetAllCountryResponseDto._() : super._();

  factory _GetAllCountryResponseDto.fromJson(Map<String, dynamic> json) =
      _$GetAllCountryResponseDtoImpl.fromJson;

  @override
  List<AllCountryDataDto> get allCountryDataList;
  @override
  @JsonKey(ignore: true)
  _$$GetAllCountryResponseDtoImplCopyWith<_$GetAllCountryResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
