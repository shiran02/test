import 'package:countryinfo/application/app_state/app_state.dart';
import 'package:countryinfo/domain/core/i_local_repository.dart';
import 'package:countryinfo/util/log_util/log_utils.dart';
import 'package:countryinfo/util/string_extensions.dart';
import 'package:dartz/dartz.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier(this._localRepository)
      : super(
          AppState.initial(),
        ) {
    _logUtils.log("init");
  }

  static final LogUtils _logUtils = LogUtils(
    featureName: "AppStateNotifier",
    printLog: true,
  );

  final ILocalRepository _localRepository;

  Future<void> appStart() async {
    state = state.copyWith(
      isAppStarted: none(),
    );

    final isLoggedIn = (await _localRepository.read('is_logged_in'))
        .getOrElse(() => false.toString())
        .toBool();

    Future.delayed(const Duration(seconds: 3), () {
      state = state.copyWith(
        isLoggedIn: isLoggedIn,
        isAppStarted: some(true),
      );
    });

    _logUtils.log("appStart : after state : $state");
  }

  Future<void> login(String loginType) async {
    _localRepository.createOrUpdate('is_logged_in', true.toString());
  }
}
