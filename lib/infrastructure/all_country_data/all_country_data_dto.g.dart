// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_country_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllCountryDataDtoImpl _$$AllCountryDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AllCountryDataDtoImpl(
      flags: FlagDataDto.fromJson(json['flags'] as Map<String, dynamic>),
      name: NameDataDto.fromJson(json['name'] as Map<String, dynamic>),
      population: (json['population'] as num).toInt(),
      region: json['region'] as String,
      languages:
          LanguageDataDto.fromJson(json['languages'] as Map<String, dynamic>),
      capital:
          (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AllCountryDataDtoImplToJson(
        _$AllCountryDataDtoImpl instance) =>
    <String, dynamic>{
      'flags': instance.flags,
      'name': instance.name,
      'population': instance.population,
      'region': instance.region,
      'languages': instance.languages,
      'capital': instance.capital,
    };
