import 'package:countryinfo/domain/get_all_country_data_response/get_all_country_data_response.dart';
import 'package:countryinfo/infrastructure/all_country_data/all_country_data_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'get_all_country_data_response_dto.freezed.dart';
part 'get_all_country_data_response_dto.g.dart';

@freezed
class GetAllCountryResponseDto with _$GetAllCountryResponseDto {
  factory GetAllCountryResponseDto({
    required List<AllCountryDataDto> allCountryDataList,
  }) = _GetAllCountryResponseDto;

  factory GetAllCountryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GetAllCountryResponseDtoFromJson(json);

  const GetAllCountryResponseDto._();

  factory GetAllCountryResponseDto.fromDomain(
      GetAllCountryDataResponse domain) {
    return GetAllCountryResponseDto(
      allCountryDataList: domain.allCountryDataList
          .map((x) => AllCountryDataDto.fromDomain(x))
          .asList(),
    );
  }

  GetAllCountryDataResponse toDomain() {
    return GetAllCountryDataResponse(
      allCountryDataList:
          allCountryDataList.map((s) => s.toDomain()).toImmutableList(),
    );
  }
}
