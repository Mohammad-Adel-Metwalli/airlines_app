import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/custom_horizontal_divider.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utils/styles.dart';

class AirlinesExperienceText extends StatelessWidget
{
  const AirlinesExperienceText({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        const CustomHorizontalDivider(),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        const Text('THE AIRLINES EXPERIENCE', style: Styles.textOfDining, textAlign: TextAlign.center),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01),

        const CustomHorizontalDivider(),

        const Spacer()
      ],
    );
  }
}