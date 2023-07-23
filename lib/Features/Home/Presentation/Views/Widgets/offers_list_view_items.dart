import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/shimmer_item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OffersListViewItems extends StatefulWidget
{
  const OffersListViewItems({
    super.key, required this.imageUrl,
  });
  final String imageUrl;

  @override
  State<OffersListViewItems> createState() => _OffersListViewItemsState();
}

class _OffersListViewItemsState extends State<OffersListViewItems>
{
  @override
  Widget build(BuildContext context)
  {
    final double width = MediaQuery.sizeOf(context).width * 0.9;

    return SizedBox(
      width: width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: CachedNetworkImage(
          imageUrl: widget.imageUrl,
          height: MediaQuery.sizeOf(context).width * 0.3,
          width: MediaQuery.sizeOf(context).width * 0.5,
          fit: BoxFit.cover,
          placeholder: (context, url) => Center(child: ShimmerItem(widthOfShimmer: width, topLeft: 25, topRight: 25, bottomLeft: 25, bottomRight: 25)),
        ),
      ),
    );
  }
}
