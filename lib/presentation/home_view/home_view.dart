import 'dart:async';

import 'package:countryinfo/application/get_all_country_data/get_all_country_data_state_notifier_provider.dart';
import 'package:countryinfo/presentation/common/header_part.dart';
import 'package:countryinfo/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kt_dart/kt.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    // useEffect(() {
    //   Future.delayed(Duration.zero, () {
    //     ref.read(getAllCountryDataStateNotifierProvider.notifier).getAllValue();
    //   });
    //   return;
    // }, []);

    // ref.read(getAllCountryDataStateNotifierProvider.notifier).getAllValue();

    // Using useEffect to set up a periodic timer to call API every 1 minute
    useEffect(() {
      // Trigger the API call initially
      ref.read(getAllCountryDataStateNotifierProvider.notifier).getAllValue();

      // Set up the periodic timer
      Timer timer =
          Timer.periodic(const Duration(milliseconds: 10000), (timer) {
        ref.read(getAllCountryDataStateNotifierProvider.notifier).getAllValue();
      });

      // Dispose the timer when the widget is destroyed
      return () {
        timer.cancel();
      };
    });

    Timer timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      ref.watch(getAllCountryDataStateNotifierProvider.notifier).getAllValue();
    });

    //--------------------------------------------------------------------------

    final allCountryDataList = ref.watch(getAllCountryDataStateNotifierProvider
        .select((value) => value.outPutList));

    // -------------------------------------------------------------------------

    return Scaffold(
      backgroundColor: AColors.primaryBackgroundColor,
      body: Column(
        children: [
          // header part -------------------------------------------------------
          HeaderPart(h: h),

          allCountryDataList.isNotEmpty() && allCountryDataList[0].value == 1
              ? Text(
                  'Phishing Attack Detected',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                )
              : allCountryDataList.isNotEmpty()
                  ? Text(
                      'No Phishing Attack Detected',
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    )
                  : const Text(
                      'Loading...',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
        ],
      ),
    );
  }
}
