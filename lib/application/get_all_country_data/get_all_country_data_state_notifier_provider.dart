import 'package:countryinfo/application/get_all_country_data/get_all_country_data_state.dart';
import 'package:countryinfo/application/get_all_country_data/get_all_country_data_state_notifier.dart';
import 'package:countryinfo/infrastructure/core/providers.dart';
import 'package:countryinfo/infrastructure/providers/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getAllCountryDataStateNotifierProvider = StateNotifierProvider<
    GetAllCountryDataStateNotifier, GetAllCountryDataState>((ref) {
  final localRepository = ref.watch(localRepositoryProvider);
  final getAllCountryDataRepository =
      ref.read(getAllCountryDataRepositdoryProvider);
  return GetAllCountryDataStateNotifier(
      localRepository, getAllCountryDataRepository);
});
