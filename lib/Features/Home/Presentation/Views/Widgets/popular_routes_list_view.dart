import 'package:airlines_app/Core/Utils/assets_data.dart';
import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/popular_routes_list_view_items.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class PopularRoutesListView extends StatelessWidget
{
  const PopularRoutesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .4,
      child: ScrollSnapList(
          itemBuilder: (context, index)
          {
            return PopularRoutesListViewItems(imageUrl: AssetsData.popularRoutesImages[index]);
          },

          initialIndex: 2,
          dynamicItemSize: true,
          scrollPhysics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemSize: MediaQuery.sizeOf(context).width * 0.9,
          onItemFocus: (int index){},
      ),
    );
  }
}
