import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constants.dart';

class OffersTextItems extends StatelessWidget
{
  const OffersTextItems({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Center(
        child: Row(
          children: [
            SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),

            const Icon(FontAwesomeIcons.planeCircleCheck, color: Constants.green),

            SizedBox(width: MediaQuery.sizeOf(context).width * 0.03),

            const Text('Available Airlines', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Constants.carmine)),
          ],
        )
    );
  }
}