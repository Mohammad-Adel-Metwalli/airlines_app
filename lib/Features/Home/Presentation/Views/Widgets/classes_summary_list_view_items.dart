import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class ClassesSummaryListViewItems extends StatelessWidget
{
  const ClassesSummaryListViewItems({super.key, required this.imageUrl, required this.imageText});
  final String imageUrl;
  final String imageText;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.9,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: MediaQuery.sizeOf(context).width * 0.9,
              width: MediaQuery.sizeOf(context).width * 0.2,
              fit: BoxFit.cover,
            ),
          ),
        ),
        
        Container(
            height: MediaQuery.sizeOf(context).height * 0.08,
            width: MediaQuery.sizeOf(context).width * 0.9,
            decoration: const BoxDecoration(color: Constants.night, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
            child: Center(child: Text(imageText, style: const TextStyle(color: Constants.babyPowder, fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center))
        )
      ],
    );
  }
}
