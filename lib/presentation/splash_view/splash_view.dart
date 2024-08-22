import 'package:countryinfo/application/get_all_country_data/get_all_country_data_state_notifier_provider.dart';
import 'package:countryinfo/presentation/home_view/home_view.dart';
import 'package:countryinfo/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import '../../util/constants/images_strings.dart';

class SplashView extends HookConsumerWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(Duration.zero, () {
        //  Locale myLocale = Localizations.localeOf(context);
        ref
            .read(getAllCountryDataStateNotifierProvider.notifier)
            .getAllCountryData();
      });
      return;
    }, []);

    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: AColors.primaryBackgroundColor,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        childWidget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Center(
                child: Image.asset(AImages.appLogo),
              ),
            ),
          ],
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        nextScreen: const HomeView(),
      ),
    );
  }
}
