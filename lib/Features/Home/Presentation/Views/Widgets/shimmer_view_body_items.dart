import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/shimmer_view_body_column_items.dart';
import 'package:flutter/material.dart';

class ShimmerViewBodyItems extends StatefulWidget
{
  const ShimmerViewBodyItems({super.key});

  @override
  State<ShimmerViewBodyItems> createState() => _ShimmerViewBodyItemsState();
}

class _ShimmerViewBodyItemsState extends State<ShimmerViewBodyItems>
{
  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
        padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.150),
        physics: const BouncingScrollPhysics(),
        child: const Center(child: ShimmerViewBodyColumnItems())
    );
  }
}
