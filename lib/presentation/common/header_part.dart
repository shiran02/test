import 'package:countryinfo/presentation/common/curved_edges.dart';
import 'package:countryinfo/util/constants/colors.dart';
import 'package:flutter/material.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({
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
              height: h * 0.15,
              color: AColors.primaryBlueColor,
              child: Center(
                child: Image.asset(
                  'assets/images/home_logo.png',
                  scale: 3,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
