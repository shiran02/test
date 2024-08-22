import 'package:countryinfo/application/app_state/app_state.dart';
import 'package:countryinfo/application/app_state/app_state_notifier.dart';
import 'package:countryinfo/infrastructure/core/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appStateNotifierProvider =
    StateNotifierProvider<AppStateNotifier, AppState>((ref) {
  final localRepository = ref.watch(localRepositoryProvider);

  return AppStateNotifier(
    localRepository,
  );
});
