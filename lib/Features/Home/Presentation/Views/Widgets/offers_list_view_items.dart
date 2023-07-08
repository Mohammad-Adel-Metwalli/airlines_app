import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../../../../../constants.dart';

class OffersListViewItems extends StatefulWidget
{
  const OffersListViewItems({
    super.key, required this.imageUrl,
  });
  final String imageUrl;

  @override
  State<OffersListViewItems> createState() => _OffersListViewItemsState();
}

class _OffersListViewItemsState extends State<OffersListViewItems> {
  @override
  Widget build(BuildContext context)
  {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 6 / 4,
            child: CachedNetworkImage(
              imageUrl: widget.imageUrl,
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(child: SpinKitFadingCircle(color: Constants.carmine)),
            ),
          ),
        ),
      ),
    );
  }
}
