import 'package:countryinfo/domain/all_country_data/all_country_data.dart';
import 'package:countryinfo/infrastructure/flag_data/flag_data_dto.dart';
import 'package:countryinfo/infrastructure/language_data/language_data_dto.dart';
import 'package:countryinfo/infrastructure/name_data/name_data_dto.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import 'package:kt_dart/kt.dart';
part 'all_country_data_dto.freezed.dart';
part 'all_country_data_dto.g.dart';

@freezed
class AllCountryDataDto with _$AllCountryDataDto {
  factory AllCountryDataDto({
    required FlagDataDto flags,
    required NameDataDto name,
    required int population,
    required String region,
    required LanguageDataDto languages,
    required List<String> capital,
  }) = _AllCountryDataDto;

  factory AllCountryDataDto.fromJson(Map<String, dynamic> json) =>
      _$AllCountryDataDtoFromJson(json);

  factory AllCountryDataDto.fromDomain(AllCountryData domain) {
    return AllCountryDataDto(
      flags: FlagDataDto.fromDomain(domain.flags),
      name: NameDataDto.fromDomain(domain.name),
      population: domain.population,
      region: domain.region,
      languages: LanguageDataDto.fromDomain(domain.languages),
      capital: domain.capital.asList(),
    );
  }

  const AllCountryDataDto._();

  AllCountryData toDomain() {
    return AllCountryData(
      flags: flags.toDomain(),
      name: name.toDomain(),
      population: population,
      region: region,
      languages: languages.toDomain(),
      capital: capital.toImmutableList(),
    );
  }
}
