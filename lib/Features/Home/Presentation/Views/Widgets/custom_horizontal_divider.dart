import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class CustomHorizontalDivider extends StatelessWidget
{
  const CustomHorizontalDivider({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.003,
      width: MediaQuery.sizeOf(context).width * 0.2,
      color: Constants.carmine,
    );
  }
}
