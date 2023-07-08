import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../constants.dart';

class DotsSmoothIndicators extends StatelessWidget
{
  const DotsSmoothIndicators({
    super.key,
    required this.activeIndex, required this.itemsLength,
  });

  final int activeIndex;
  final int itemsLength;

  @override
  Widget build(BuildContext context)
  {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: itemsLength,
      effect: CustomizableEffect(
          dotDecoration: DotDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Constants.navyBlue,
              width: 11,
              height: 11
          ),

          activeDotDecoration: DotDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Constants.carmine,
              width: 40,
              height: 11
          )
      ),
    );
  }
}