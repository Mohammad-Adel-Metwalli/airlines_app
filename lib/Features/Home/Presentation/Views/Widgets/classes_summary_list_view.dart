import 'package:airlines_app/Core/Utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'classes_summary_list_view_items.dart';

class ClassesSummaryListView extends StatelessWidget
{
  const ClassesSummaryListView({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .55,
      child: ScrollSnapList(
          scrollPhysics: const BouncingScrollPhysics(),
          dynamicItemSize: true,
          initialIndex: 2,

          itemBuilder: (context, index)
          {
            return ClassesSummaryListViewItems(imageUrl: AssetsData.classesImages[index], imageText: AssetsData.classesImagesText[index]);
          },

          itemCount: 5,
          itemSize: MediaQuery.sizeOf(context).width * 0.9,
          onItemFocus: (index){}
      ),
    );
  }
}
