import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class OffersListViewItems extends StatelessWidget
{
  const OffersListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.9,
        child: ListTile(
          title: CachedNetworkImage(
            imageUrl: 'https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fthairesidents.com%2Fwp-content%2Fuploads%2F2017%2F01%2FAn-Emirates-A380.jpg&f=1&nofb=1&ipt=d13cc7962008fa06cab73b3bb9097178fa8e6a5baea073db770ebb6d4fe02785&ipo=images',
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width * 0.5,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}