import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';
import '../all_country_data/all_country_data.dart';

part 'get_all_country_data_response.freezed.dart';

@freezed
class GetAllCountryDataResponse with _$GetAllCountryDataResponse {
  factory GetAllCountryDataResponse({
    required KtList<AllCountryData> allCountryDataList,
  }) = _GetAllCountryDataResponse;

  factory GetAllCountryDataResponse.empty() {
    return GetAllCountryDataResponse(
      allCountryDataList: emptyList(),
    );
  }
}
