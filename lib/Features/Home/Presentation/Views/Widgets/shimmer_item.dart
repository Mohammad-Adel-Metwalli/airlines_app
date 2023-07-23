import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerItem extends StatelessWidget
{
  const ShimmerItem({
    super.key, required this.widthOfShimmer, required this.topLeft, required this.topRight, required this.bottomLeft, required this.bottomRight,
  });
  final double widthOfShimmer;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;

  @override
  Widget build(BuildContext context)
  {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(topRight), topLeft: Radius.circular(topLeft), bottomRight: Radius.circular(bottomRight), bottomLeft: Radius.circular(bottomLeft))),
      child: SizedBox(
        width: widthOfShimmer,
        child: Shimmer.fromColors(
          baseColor: Colors.grey[500]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[500]!,
                borderRadius: BorderRadius.only(topRight: Radius.circular(topRight), topLeft: Radius.circular(topLeft), bottomRight: Radius.circular(bottomRight), bottomLeft: Radius.circular(bottomLeft))
            ),
          ),
        ),
      ),
    );
  }
}