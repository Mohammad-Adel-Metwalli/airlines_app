import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/shimmer_offers_list_view_items.dart';
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
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: CachedNetworkImage(
          imageUrl: widget.imageUrl,
          height: MediaQuery.sizeOf(context).width * 0.3,
          width: MediaQuery.sizeOf(context).width * 0.5,
          fit: BoxFit.cover,
          placeholder: (context, url) => const Center(child: ShimmerOffersListViewItems()),
        ),
      ),
    );
  }
}
