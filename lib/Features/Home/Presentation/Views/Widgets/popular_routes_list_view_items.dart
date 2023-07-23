import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PopularRoutesListViewItems extends StatelessWidget
{
  const PopularRoutesListViewItems({
    super.key, required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.9,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          width: MediaQuery.sizeOf(context).width * 0.9,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}