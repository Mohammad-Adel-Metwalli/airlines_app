import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ShimmerDotsSmoothIndicators extends StatelessWidget
{
  const ShimmerDotsSmoothIndicators({
    super.key,
    required this.activeIndex,
  });

  final int activeIndex;

  @override
  Widget build(BuildContext context)
  {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: 5,
      effect: CustomizableEffect(
          dotDecoration: DotDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[500]!,
              width: 11,
              height: 11
          ),

          activeDotDecoration: DotDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[500]!,
              width: 40,
              height: 11
          )
      ),
    );
  }
}