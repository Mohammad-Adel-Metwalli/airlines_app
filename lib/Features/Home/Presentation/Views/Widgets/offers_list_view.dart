import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import 'offers_list_view_items.dart';

class OffersListView extends StatelessWidget
{
  const OffersListView({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .3,
      child: ScrollSnapList(
        scrollPhysics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        dynamicItemSize: true,

        itemBuilder: (context, index)
        {
          return const OffersListViewItems();
        },

        itemSize: MediaQuery.sizeOf(context).width * 0.92,
        onItemFocus: (index){},
      ),
    );
  }
}
