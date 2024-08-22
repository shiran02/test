import 'package:countryinfo/domain/flag_data/flag_data.dart';
import 'package:countryinfo/domain/language_data/language_data.dart';
import 'package:countryinfo/domain/name_data/name_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
part 'all_country_data.freezed.dart';

@freezed
class AllCountryData with _$AllCountryData {
  factory AllCountryData({
    required FlagData flags,
    required NameData name,
    required int population,
    required String region,
    required LanguageData languages,
    required KtList<String> capital,
  }) = _AllCountryData;

  factory AllCountryData.empty() {
    return AllCountryData(
      flags: FlagData.empty(),
      name: NameData.empty(),
      population: 0,
      region: "",
      languages: LanguageData.empty(),
      capital: emptyList(),
    );
  }
}
