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
    final planesImages = [
      'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fthairesidents.com%2Fwp-content%2Fuploads%2F2017%2F01%2FAn-Emirates-A380.jpg&f=1&nofb=1&ipt=d13cc7962008fa06cab73b3bb9097178fa8e6a5baea073db770ebb6d4fe02785&ipo=images',
      'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Ftheflight.info%2Fwp-content%2Fgallery%2FLufthansa-Airbus-A380%2Fd-aima-lufthansa-airbus-a380-800.jpg&f=1&nofb=1&ipt=982f065ef756cdd771411e247b10928fb922b6da7b70b8f636358647292e0ee4&ipo=images',
      'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2F1.bp.blogspot.com%2F-QPDJmLNkfDU%2FUrnKmX3ALTI%2FAAAAAAAAEj0%2Fxw4z7HPLQpc%2Fs1600%2FTurkish%2BAirlines%2Bbegins%2Bflights%2Bto%2BAsmara.jpg&f=1&nofb=1&ipt=7b85241e91251d9be986d30f0c9fbcd45eb41bff84a06955f5d74cc6c971b54d&ipo=images',
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.airplane-pictures.net%2Fimages%2Fuploaded-images%2F2017%2F7%2F22%2F936219.jpg&f=1&nofb=1&ipt=043b18489351cbbb978e1b9805c129ae604a63bf22221d3d19a40d268d9f6045&ipo=images',
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.airplane-pictures.net%2Fimages%2Fuploaded-images%2F2020%2F4%2F19%2F1299790.jpg&f=1&nofb=1&ipt=ffc038b3692b86e38c128e866258bef920aa058a42e9411172a248fdde05829d&ipo=images'
    ];

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .3,
          child: ScrollSnapList(
            scrollPhysics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: planesImages.length,
            dynamicItemSize: true,

            itemBuilder: (context, index)
            {
              return OffersListViewItems(imageUrl: planesImages[index]);
            },

            itemSize: MediaQuery.sizeOf(context).width * 0.92,
            onItemFocus: onItemFocus
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        DotsSmoothIndicators(activeIndex: activeIndex, itemsLength: planesImages.length)
      ],
    );
  }
}
