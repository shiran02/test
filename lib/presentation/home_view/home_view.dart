import 'package:countryinfo/application/get_all_country_data/get_all_country_data_state_notifier_provider.dart';
import 'package:countryinfo/presentation/common/common_loading_indicator.dart';

import 'package:countryinfo/presentation/common/header_part.dart';
import 'package:countryinfo/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'widgets/country_view_main_card.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    useEffect(() {
      Future.delayed(Duration.zero, () {});
      return;
    }, [
      ref.watch(getAllCountryDataStateNotifierProvider
          .select((value) => value.isSort))
    ]);

    //--------------------------------------------------------------------------

    final allCountryDataList = ref.watch(getAllCountryDataStateNotifierProvider
        .select((value) => value.allCountryDataList));

    final isEnable = ref.watch(getAllCountryDataStateNotifierProvider
        .select((value) => value.isLoading));

    final isOpen = ref.watch(getAllCountryDataStateNotifierProvider
        .select((value) => value.isClickTouch));

    final isSort = ref.watch(
        getAllCountryDataStateNotifierProvider.select((value) => value.isSort));

    final sortType = ref.watch(
        getAllCountryDataStateNotifierProvider.select((value) => value.sortBy));

    final selectOption = ref.watch(getAllCountryDataStateNotifierProvider
        .select((value) => value.selectOption));

    // -------------------------------------------------------------------------

    return Scaffold(
      backgroundColor: AColors.primaryBackgroundColor,
      body: Column(
        children: [
          // header part -------------------------------------------------------
          HeaderPart(h: h),

          // filter section ----------------------------------------------------

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: isOpen
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(17),
                      topRight: Radius.circular(17),
                    )
                  : const BorderRadius.all(Radius.circular(17)),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  isSort ? 'Filters ($sortType)' : 'Filters',
                  style: const TextStyle(
                      color: AColors.mainTextColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                ),
                InkWell(
                  onTap: () {
                    if (isOpen) {
                      ref
                          .watch(
                              getAllCountryDataStateNotifierProvider.notifier)
                          .isClick();
                    } else {
                      ref
                          .watch(
                              getAllCountryDataStateNotifierProvider.notifier)
                          .isNotClick();
                    }
                  },
                  child: SizedBox(
                    height: 33,
                    width: 33,
                    //  color: Colors.amber,
                    child: Image.asset(
                      isOpen
                          ? 'assets/images/cicle_up_dawn_btn.png'
                          : 'assets/images/cicle_drop_dawn_btn.png',
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Drop dawn Part ----------------------------------------------------

          Visibility(
            visible: isOpen,
            child: Container(
              padding: const EdgeInsets.only(
                left: 25,
                right: 17,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(17),
                  bottomRight: Radius.circular(17),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(
                      0.1,
                      0,
                    ),
                  ),
                ],
              ),
              height: 120,
              width: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Population',
                            style: TextStyle(
                                color: AColors.mainTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Radio(
                            activeColor: AColors.primaryBlueColor,
                            value: 1,
                            groupValue: selectOption,
                            onChanged: (value) {
                              ref
                                  .watch(getAllCountryDataStateNotifierProvider
                                      .notifier)
                                  .setSelectionOption(value!);

                              ref
                                  .watch(getAllCountryDataStateNotifierProvider
                                      .notifier)
                                  .sortCountriesByPopulation();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Name',
                            style: TextStyle(
                                color: AColors.mainTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Radio(
                            activeColor: AColors.primaryBlueColor,
                            value: 2,
                            groupValue: selectOption,
                            onChanged: (value) {
                              ref
                                  .watch(getAllCountryDataStateNotifierProvider
                                      .notifier)
                                  .setSelectionOption(value!);

                              ref
                                  .watch(getAllCountryDataStateNotifierProvider
                                      .notifier)
                                  .sortCountriesByName();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Capital',
                            style: TextStyle(
                                color: AColors.mainTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Radio(
                            value: 3,
                            activeColor: AColors.primaryBlueColor,
                            groupValue: selectOption,
                            onChanged: (value) {
                              ref
                                  .watch(getAllCountryDataStateNotifierProvider
                                      .notifier)
                                  .setSelectionOption(value!);

                              ref
                                  .watch(getAllCountryDataStateNotifierProvider
                                      .notifier)
                                  .sortCountriesByCapital();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'none',
                            style: TextStyle(
                                color: AColors.mainTextColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Radio(
                            activeColor: AColors.primaryBlueColor,
                            value: 4,
                            groupValue: selectOption,
                            onChanged: (value) {
                              ref
                                  .watch(getAllCountryDataStateNotifierProvider
                                      .notifier)
                                  .setSelectionOption(value!);

                              ref
                                  .watch(getAllCountryDataStateNotifierProvider
                                      .notifier)
                                  .removeSort();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ---------------

          // Country List view -------------------------------------------------

          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: h,
              child: allCountryDataList.isEmpty()
                  ? const Center(
                      child: CommonLoadingIndicator(),
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
                          child: CountryViewDataMainCard(
                            flag: flag,
                            countryName: countryName,
                            capital: capital,
                            detailList: detailList,
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
