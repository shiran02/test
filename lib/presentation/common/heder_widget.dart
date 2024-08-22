import 'package:countryinfo/presentation/common/curved_edges.dart';
import 'package:countryinfo/util/constants/colors.dart';
import 'package:flutter/material.dart';

ClipPath HeaderWidget(double h) {
  return ClipPath(
    clipper: TCustomCurvedWidgets(),
    child: Container(
      height: h * 0.15,
      color: AColors.primaryBlueColor,
      child: Center(
        child: Image.asset(
          'assets/images/home_logo.png',
          scale: 4,
        ),
      ),
    ),
  );
}
