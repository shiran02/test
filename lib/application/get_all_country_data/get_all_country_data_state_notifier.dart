import 'package:countryinfo/domain/core/i_local_repository.dart';
import 'package:countryinfo/domain/get_all_country_data_repository/i_get_country_data_repository.dart';
import 'package:countryinfo/util/log_util/log_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kt_dart/kt.dart';
import 'get_all_country_data_state.dart';

class GetAllCountryDataStateNotifier
    extends StateNotifier<GetAllCountryDataState> {
  GetAllCountryDataStateNotifier(
    this._localRepository,
    this._getCountryDataRepository,
  ) : super(
          GetAllCountryDataState.initial(),
        ) {
    _logUtils.log("init");
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "Get All Country Data State Notifier",
    printLog: true,
  );

  final ILocalRepository _localRepository;
  final IGetCountryDataRepository _getCountryDataRepository;

  // get All Data -------------------------------------------------------------

  Future<void> getAllValue() async {
    _logUtils.log("Get All Country Data State Notifier");

    final getAllCountryDataSucesOrFailure =
        await _getCountryDataRepository.getValue();

    _logUtils.log(
        "get All Country Data Suces Or Failure  $getAllCountryDataSucesOrFailure");

    getAllCountryDataSucesOrFailure.fold((failure) {
      _logUtils.log(":::::::::::::::::::   failure");
      state = state.copyWith(
        isLoading: false,
        responseFailure: none(),
        // responseFailure: optionOf(failure),
      );
    }, (response) {
      state = state.copyWith(
        isLoading: false,
        responseFailure: none(),
        outPutList: response.data,
      );
    });
  }
}
