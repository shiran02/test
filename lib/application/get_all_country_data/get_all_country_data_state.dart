import 'package:countryinfo/domain/all_country_data/all_country_data.dart';
import 'package:countryinfo/domain/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'get_all_country_data_state.freezed.dart';

@freezed
class GetAllCountryDataState with _$GetAllCountryDataState {
  factory GetAllCountryDataState({
    required bool isLoading,
    required Option<Failure> responseFailure,
    required KtList<AllCountryData> allCountryDataList,
  }) = _GetAllCountryDataState;

  factory GetAllCountryDataState.initial() {
    return GetAllCountryDataState(
      isLoading: false,
      responseFailure: none(),
      allCountryDataList: emptyList(),
    );
  }
}
