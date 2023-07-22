import 'package:flutter/material.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../constants.dart';

class DiningImageText extends StatelessWidget
{
  const DiningImageText({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.08,
      width: MediaQuery.sizeOf(context).width * 0.9,

      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
          color: Constants.night
      ),

      child: const Center(child: Text('Dining', style: Styles.textOfDiningImage)),
    );
  }
}
