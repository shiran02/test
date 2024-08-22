// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_country_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllCountryData {
  FlagData get flags => throw _privateConstructorUsedError;
  NameData get name => throw _privateConstructorUsedError;
  int get population => throw _privateConstructorUsedError;
  String get region => throw _privateConstructorUsedError;
  LanguageData get languages => throw _privateConstructorUsedError;
  KtList<String> get capital => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllCountryDataCopyWith<AllCountryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllCountryDataCopyWith<$Res> {
  factory $AllCountryDataCopyWith(
          AllCountryData value, $Res Function(AllCountryData) then) =
      _$AllCountryDataCopyWithImpl<$Res, AllCountryData>;
  @useResult
  $Res call(
      {FlagData flags,
      NameData name,
      int population,
      String region,
      LanguageData languages,
      KtList<String> capital});

  $FlagDataCopyWith<$Res> get flags;
  $NameDataCopyWith<$Res> get name;
  $LanguageDataCopyWith<$Res> get languages;
}

/// @nodoc
class _$AllCountryDataCopyWithImpl<$Res, $Val extends AllCountryData>
    implements $AllCountryDataCopyWith<$Res> {
  _$AllCountryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = null,
    Object? name = null,
    Object? population = null,
    Object? region = null,
    Object? languages = null,
    Object? capital = null,
  }) {
    return _then(_value.copyWith(
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as FlagData,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameData,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as LanguageData,
      capital: null == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlagDataCopyWith<$Res> get flags {
    return $FlagDataCopyWith<$Res>(_value.flags, (value) {
      return _then(_value.copyWith(flags: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NameDataCopyWith<$Res> get name {
    return $NameDataCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LanguageDataCopyWith<$Res> get languages {
    return $LanguageDataCopyWith<$Res>(_value.languages, (value) {
      return _then(_value.copyWith(languages: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllCountryDataImplCopyWith<$Res>
    implements $AllCountryDataCopyWith<$Res> {
  factory _$$AllCountryDataImplCopyWith(_$AllCountryDataImpl value,
          $Res Function(_$AllCountryDataImpl) then) =
      __$$AllCountryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FlagData flags,
      NameData name,
      int population,
      String region,
      LanguageData languages,
      KtList<String> capital});

  @override
  $FlagDataCopyWith<$Res> get flags;
  @override
  $NameDataCopyWith<$Res> get name;
  @override
  $LanguageDataCopyWith<$Res> get languages;
}

/// @nodoc
class __$$AllCountryDataImplCopyWithImpl<$Res>
    extends _$AllCountryDataCopyWithImpl<$Res, _$AllCountryDataImpl>
    implements _$$AllCountryDataImplCopyWith<$Res> {
  __$$AllCountryDataImplCopyWithImpl(
      _$AllCountryDataImpl _value, $Res Function(_$AllCountryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flags = null,
    Object? name = null,
    Object? population = null,
    Object? region = null,
    Object? languages = null,
    Object? capital = null,
  }) {
    return _then(_$AllCountryDataImpl(
      flags: null == flags
          ? _value.flags
          : flags // ignore: cast_nullable_to_non_nullable
              as FlagData,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as NameData,
      population: null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as LanguageData,
      capital: null == capital
          ? _value.capital
          : capital // ignore: cast_nullable_to_non_nullable
              as KtList<String>,
    ));
  }
}

/// @nodoc

class _$AllCountryDataImpl implements _AllCountryData {
  _$AllCountryDataImpl(
      {required this.flags,
      required this.name,
      required this.population,
      required this.region,
      required this.languages,
      required this.capital});

  @override
  final FlagData flags;
  @override
  final NameData name;
  @override
  final int population;
  @override
  final String region;
  @override
  final LanguageData languages;
  @override
  final KtList<String> capital;

  @override
  String toString() {
    return 'AllCountryData(flags: $flags, name: $name, population: $population, region: $region, languages: $languages, capital: $capital)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllCountryDataImpl &&
            (identical(other.flags, flags) || other.flags == flags) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.languages, languages) ||
                other.languages == languages) &&
            (identical(other.capital, capital) || other.capital == capital));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, flags, name, population, region, languages, capital);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllCountryDataImplCopyWith<_$AllCountryDataImpl> get copyWith =>
      __$$AllCountryDataImplCopyWithImpl<_$AllCountryDataImpl>(
          this, _$identity);
}

abstract class _AllCountryData implements AllCountryData {
  factory _AllCountryData(
      {required final FlagData flags,
      required final NameData name,
      required final int population,
      required final String region,
      required final LanguageData languages,
      required final KtList<String> capital}) = _$AllCountryDataImpl;

  @override
  FlagData get flags;
  @override
  NameData get name;
  @override
  int get population;
  @override
  String get region;
  @override
  LanguageData get languages;
  @override
  KtList<String> get capital;
  @override
  @JsonKey(ignore: true)
  _$$AllCountryDataImplCopyWith<_$AllCountryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
