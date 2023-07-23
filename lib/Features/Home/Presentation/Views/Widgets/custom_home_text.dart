import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/custom_horizontal_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utils/styles.dart';

class CustomHomeText extends StatelessWidget
{
  const CustomHomeText({
    super.key, required this.textOfHome,
  });
  final String textOfHome;

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        const CustomHorizontalDivider(),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        Text(textOfHome, style: Styles.textOfDining, textAlign: TextAlign.center),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        const CustomHorizontalDivider(),

        const Spacer()
      ],
    );
  }
}