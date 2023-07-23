import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/dining_image.dart';
import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/dining_image_text.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Dining extends StatefulWidget
{
  const Dining({super.key});

  @override
  State<Dining> createState() => _DiningState();
}

class _DiningState extends State<Dining>
{
  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * .4,
            child: ScrollSnapList(
                itemBuilder: (context, index)
                {
                  return const DiningImage();
                },

                itemCount: 1,
                itemSize: MediaQuery.sizeOf(context).width * 0.9,
                onItemFocus: (int index){}
            ),
          ),

          const DiningImageText()
        ],
      ),
    );
  }
}
