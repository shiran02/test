import 'package:countryinfo/domain/core/i_local_repository.dart';
import 'package:countryinfo/domain/get_all_country_data_repository/i_get_country_data_repository.dart';
import 'package:countryinfo/util/log_util/log_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/all_country_data/all_country_data.dart';
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

  isClick() {
    state = state.copyWith(
      isClickTouch: false,
      heigth: 300,
    );
  }

  isNotClick() {
    state = state.copyWith(
      isClickTouch: true,
      heigth: 50,
    );
  }
  // set selection option of Radio Button ----------------------------------

  setSelectionOption(int value) {
    state = state.copyWith(
      selectOption: value,
    );
  }

  // call sorting method according to User Selection -----------------------

  // sort country data accoding to Capital ---------------------------------

  sortCountriesByName() {
    _logUtils.log(":::: In sort Countries By Name :::::: ");

    state = state.copyWith(
      isSort: false,
    );
    KtList<AllCountryData> countryList = state.allCountryDataList;

    final list = countryList.sortedWith((a, b) {
      int comparison = a.name.common[0].compareTo(b.name.common[0]);
      return comparison;
    });
    state = state.copyWith(
      allCountryDataList: list,
      isSort: true,
      sortBy: "sort by according Name",
    );
  }

  // sort country data accoding to Capital ---------------------------------

  sortCountriesByCapital() {
    _logUtils.log(":::: In sort Countries By Capital :::::: ");
    state = state.copyWith(
      isSort: false,
    );
    KtList<AllCountryData> countryList = state.allCountryDataList;

    final list = countryList.sortedWith((a, b) {
      // Assuming each country has at least one capital, we compare the first capital name
      int comparison = a.capital[0].compareTo(b.capital[0]);
      return comparison;
    });
    state = state.copyWith(
      allCountryDataList: list,
      isSort: true,
      sortBy: "sort by according Capital",
    );
  }

  // sort country data accoding to population ---------------------------------

  sortCountriesByPopulation() {
    _logUtils.log(":::: In sort Countries By Population :::::: ");
    state = state.copyWith(
      isSort: false,
    );

    KtList<AllCountryData> countryList = state.allCountryDataList;
    final list = countryList.sortedWith((a, b) {
      return a.population.compareTo(b.population);
    });

    state = state.copyWith(
      allCountryDataList: list,
      isSort: true,
      sortBy: "sort by according Population",
    );
  }

  // if Dont want sort methods ------------------------------------------------

  removeSort() {
    _logUtils.log(":::: In removeSort :::::: ");

    KtList<AllCountryData> nonSortList = state.allCountryDataNonSortList;

    state = state.copyWith(
      allCountryDataList: nonSortList,
      isSort: false,
      sortBy: "",
    );
  }

  /*
     if (ascending) {
      return a.population.compareTo(b.population);
    } else {
      return b.population.compareTo(a.population);
    }

  */

  // get All Data -------------------------------------------------------------

  Future<void> getAllCountryData() async {
    _logUtils.log("Get All Country Data State Notifier");

    state = state.copyWith(
      isLoading: true,
    );

    final getAllCountryDataSucesOrFailure =
        await _getCountryDataRepository.getCountryData();

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
        allCountryDataList: response.allCountryDataList,
        allCountryDataNonSortList: response.allCountryDataList,
      );
      _logUtils.log(
          "::::::::::allCountryDataList:::::::::   ${state.allCountryDataList}");
    });
  }
}
