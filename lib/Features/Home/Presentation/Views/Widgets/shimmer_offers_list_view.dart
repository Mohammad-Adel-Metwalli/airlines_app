import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/shimmer_dots_smooth_indicators.dart';
import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/shimmer_offers_list_view_items.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class ShimmerOffersListView extends StatefulWidget
{
  const ShimmerOffersListView({super.key});

  @override
  State<ShimmerOffersListView> createState() => _ShimmerOffersListViewState();
}

class _ShimmerOffersListViewState extends State<ShimmerOffersListView>
{
  int activeIndex = 0;

  void onItemFocus(int index)
  {
    setState(()
    {
      activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .3,
          child: ScrollSnapList(
              scrollPhysics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              dynamicItemSize: true,

              itemBuilder: (context, index)
              {
                return const ShimmerOffersListViewItems();
              },

              itemSize: MediaQuery.sizeOf(context).width * 0.92,
              onItemFocus: onItemFocus
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        ShimmerDotsSmoothIndicators(activeIndex: activeIndex)
      ],
    );
  }
}
