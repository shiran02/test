import 'package:countryinfo/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CommonLoadingIndicator extends StatelessWidget {
  const CommonLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: LoadingAnimationWidget.horizontalRotatingDots(
          color: AColors.primaryBlueColor,
          size: 60,
        ),
      ),
    );
  }
}
