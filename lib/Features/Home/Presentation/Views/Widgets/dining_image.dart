import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class DiningImage extends StatelessWidget
{
  const DiningImage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ClipRRect(
      borderRadius: const BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      child: CachedNetworkImage(
        width: MediaQuery.sizeOf(context).width * 0.9,
        imageUrl: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fassets-global.website-files.com%2F5dd697a92383b03af38eecdc%2F5e56e3e9802e0e58efa94f3b_bad-airline-food.jpg&f=1&nofb=1&ipt=64305f61eed89cdfe3875fd2a1fb8abcceab19b450fbaaaad1aaf7008aff48a1&ipo=images',
        fit: BoxFit.cover,
      ),
    );
  }
}
