import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import 'offers_text_items.dart';

class OffersText extends StatelessWidget
{
  const OffersText({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Container(
        height: MediaQuery.sizeOf(context).height * 0.05,
        width: MediaQuery.sizeOf(context).width * 0.6,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Constants.lightApricot
        ),
        child: const OffersTextItems()
    );
  }
}
