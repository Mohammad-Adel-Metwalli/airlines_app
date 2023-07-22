import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerOffersText extends StatelessWidget
{
  const ShimmerOffersText({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
          height: MediaQuery.sizeOf(context).height * 0.05,
          width: MediaQuery.sizeOf(context).width * 0.6,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: Colors.grey[500]!),
      ),
    );
  }
}
