import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerOffersListViewItems extends StatelessWidget
{
  const ShimmerOffersListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: Shimmer.fromColors(
          baseColor: Colors.grey[500]!,
          highlightColor: Colors.grey[100]!,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[500]!,
                borderRadius: BorderRadius.circular(25)
            ),
          ),
        ),
      ),
    );
  }
}