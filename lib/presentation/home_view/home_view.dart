import 'package:countryinfo/application/get_all_country_data/get_all_country_data_state_notifier_provider.dart';

import 'package:countryinfo/presentation/common/header_part.dart';
import 'package:countryinfo/presentation/country_detail_view/country_detail_view.dart';
import 'package:countryinfo/util/constants/colors.dart';
import 'package:countryinfo/util/constants/images_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    // useEffect(() {
    //   Future.delayed(Duration.zero, () {
    //     // ref
    //     //     .watch(getAllCountryDataStateNotifierProvider.notifier)
    //     //     .getAllCountryData();
    //   });
    //   return;
    // }, []);

    final allCountryDataList = ref.watch(getAllCountryDataStateNotifierProvider
        .select((value) => value.allCountryDataList));

    final isEnable = ref.watch(getAllCountryDataStateNotifierProvider
        .select((value) => value.isLoading));

    return Scaffold(
      backgroundColor: AColors.primaryBackgroundColor,
      body: Column(
        children: [
          // header part ---------------------------
          HeaderPart(h: h),

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: const Offset(
                    0.9,
                    0.3,
                  ),
                ),
              ],
            ),
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Filters',
                  style: TextStyle(
                      color: AColors.mainTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Image.asset(
                    AImages.dropDawn,
                    scale: 2.2,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: h,
              //color: Colors.red,
              child: allCountryDataList.isEmpty()
                  ? const Center(
                      child: Text('No Data Yet There is some erras'),
                    )
                  : ListView.builder(
                      itemCount: allCountryDataList.size,
                      itemBuilder: (context, index) {
                        //----------------------------------------------------

                        final detailList = allCountryDataList[index];
                        final countryName =
                            allCountryDataList[index].name.common;
                        final flag = allCountryDataList[index].flags.png;

                        final capital = allCountryDataList[index].capital[0];

                        // ----------------------------------------------------
                        if (index >= allCountryDataList.size) {
                          return Container(); // Return an empty container if out of bounds
                        }
                        return Skeletonizer(
                          enabled: isEnable,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            margin: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 2,
                                  offset: const Offset(
                                    0.9,
                                    0.3,
                                  ),
                                ),
                              ],
                            ),
                            height: 100,
                            width: 34,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 26,
                                  backgroundImage: NetworkImage(
                                    scale: 4,
                                    flag,
                                  ),
                                ),
                                const SizedBox(
                                  width: 19,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        countryName,
                                        style: const TextStyle(
                                          color: AColors.mainTextColor,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        capital,
                                        style: const TextStyle(
                                          color: AColors.secondTextColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  ),
                                ),
                                const Spacer(
                                  flex: 1,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigate To Country View Screen ---------
                                    Get.to(
                                      () => CountryDetailView(
                                        countryDetail: detailList,
                                      ),
                                      transition: Transition.rightToLeft,
                                    );
                                  },
                                  child: SizedBox(
                                    width: 50,
                                    height: 80,
                                    child: Image.asset(
                                      AImages.arrow_btn,
                                      scale: 3.1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
