import 'package:countryinfo/domain/all_country_data/all_country_data.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../util/constants/colors.dart';
import '../common/conuntry_detail_header_part.dart';

class CountryDetailView extends HookConsumerWidget {
  final AllCountryData countryDetail;
  CountryDetailView({
    super.key,
    required this.countryDetail,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final populationValue = countryDetail.population;

    final capitalName = countryDetail.capital[0];
    final regionName = countryDetail.region;
    final flagUrl = countryDetail.flags.png;
    final flagDescription = countryDetail.flags.alt;
    final countryName = countryDetail.name.common;
    final capital = countryDetail.capital[0];
    final officialName = countryDetail.name.official;

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          // header part ---------------------------
          CountryDetalViewHeaderPart(h: h),

          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              height: h,
              child: Column(
                children: [
                  // flag Detail Card view
                  FlageDetailCard(
                    h: h,
                    flagUrl: flagUrl,
                    countryName: countryName,
                    officialName: officialName,
                    flagDescription: flagDescription,
                  ),

                  const SizedBox(
                    height: 15,
                  ),

                  // Details Card View -----------------

                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 13,
                    ),
                    //height: h * 0.2,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AColors.borderColor,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Details',
                          style: TextStyle(
                            color: AColors.primaryBlueColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),

                        // population View ------------------------------------------
                        NumberDetailCardView(
                          topic: 'population',
                          populationValue: populationValue,
                        ),

                        //population View ------------------------------------------
                        TextDetailCardView(
                          topic: 'capital',
                          textValue: capitalName,
                        ),

                        TextDetailCardView(
                          topic: 'region',
                          textValue: regionName,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FlageDetailCard extends StatelessWidget {
  const FlageDetailCard({
    super.key,
    required this.h,
    required this.flagUrl,
    required this.countryName,
    required this.officialName,
    required this.flagDescription,
  });

  final double h;
  final String flagUrl;
  final String countryName;
  final String officialName;
  final String flagDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      height: h * 0.21,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AColors.borderColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    9.0,
                  ),
                  child: Image.network(
                    flagUrl,
                    width: 80,
                    height: 52,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        countryName,
                        style: const TextStyle(
                          color: AColors.mainTextColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        officialName,
                        style: const TextStyle(
                          color: AColors.secondTextColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            width: double.infinity,
            child: Text(
              textAlign:
                  flagDescription.isEmpty ? TextAlign.left : TextAlign.justify,
              flagDescription.isEmpty
                  ? 'Sorry!! No Decription about Flag'
                  : flagDescription,
              maxLines: 4,
              style: TextStyle(
                color: flagDescription.isEmpty
                    ? Colors.red
                    : AColors.secondTextColor,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class NumberDetailCardView extends StatelessWidget {
  const NumberDetailCardView({
    super.key,
    required this.topic,
    required this.populationValue,
  });

  final String topic;
  final int populationValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            topic,
            style: const TextStyle(
              color: AColors.mainTextColor,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            populationValue.toString(),
            style: const TextStyle(
              color: AColors.secondTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class TextDetailCardView extends StatelessWidget {
  const TextDetailCardView({
    super.key,
    required this.topic,
    required this.textValue,
  });

  final String topic;
  final String textValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            topic,
            style: const TextStyle(
              color: AColors.mainTextColor,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            textValue,
            style: const TextStyle(
              color: AColors.secondTextColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
