import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/shimmer_offers_list_view.dart';
import 'package:flutter/material.dart';

class ShimmerViewBodyColumnItems extends StatefulWidget
{
  const ShimmerViewBodyColumnItems({super.key});

  @override
  State<ShimmerViewBodyColumnItems> createState() => _ShimmerViewBodyColumnItemsState();
}

class _ShimmerViewBodyColumnItemsState extends State<ShimmerViewBodyColumnItems>
{
  @override
  Widget build(BuildContext context)
  {
    return const Column(
      children: [
        ShimmerOffersListView()
      ],
    );
  }
}
