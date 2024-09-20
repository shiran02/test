import 'package:countryinfo/domain/core/failure.dart';
import 'package:countryinfo/domain/get_all_country_data_repository/data.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'get_all_country_data_state.freezed.dart';

@freezed
class GetAllCountryDataState with _$GetAllCountryDataState {
  factory GetAllCountryDataState({
    required bool isLoading,
    required int value,
    required Option<Failure> responseFailure,
    required KtList<Data> outPutList,
  }) = _GetAllCountryDataState;

  factory GetAllCountryDataState.initial() {
    return GetAllCountryDataState(
      value: 0,
      isLoading: false,
      responseFailure: none(),
      outPutList: emptyList(),
    );
  }
}
