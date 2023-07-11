import 'package:airlines_app/Core/Utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'dots_smooth_indicators.dart';
import 'offers_list_view_items.dart';

class OffersListView extends StatefulWidget
{
  const OffersListView({
    super.key,
  });

  @override
  State<OffersListView> createState() => _OffersListViewState();
}

class _OffersListViewState extends State<OffersListView>
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
            itemCount: AssetsData.planesImages.length,
            dynamicItemSize: true,

            itemBuilder: (context, index)
            {
              return OffersListViewItems(imageUrl: AssetsData.planesImages[index]);
            },

            itemSize: MediaQuery.sizeOf(context).width * 0.9,
            onItemFocus: onItemFocus
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        DotsSmoothIndicators(activeIndex: activeIndex, itemsLength: AssetsData.planesImages.length)
      ],
    );
  }
}
