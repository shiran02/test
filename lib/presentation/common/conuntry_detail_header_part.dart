import 'package:countryinfo/presentation/common/curved_edges.dart';
import 'package:countryinfo/presentation/home_view/home_view.dart';
import 'package:countryinfo/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryDetalViewHeaderPart extends StatelessWidget {
  const CountryDetalViewHeaderPart({
    super.key,
    required this.h,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h * 0.16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
            clipper: TCustomCurvedWidgets(),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              height: h * 0.15,
              color: AColors.primaryBlueColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(
                        () => const HomeView(),
                        transition: Transition.leftToRight,
                      );
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Image.asset(
                    'assets/images/home_logo.png',
                    scale: 3,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
