import 'package:countryinfo/infrastructure/core/providers.dart';
import 'package:countryinfo/infrastructure/get_all_country_data_repository/get_country_data_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getAllCountryDataRepositdoryProvider =
    Provider.autoDispose<GetAllCountryDataReository>((ref) {
  final apiHelper = ref.watch(apiHelperProvider);

  return GetAllCountryDataReository(apiHelper);
});
