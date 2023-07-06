import 'package:airlines_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'lottie_animations.dart';

class SuccessAnimationDialog extends StatelessWidget
{
  const SuccessAnimationDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Constants.lightYellow,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.25,
          child: const Column(
            children: [
              Spacer(),

              LottieAnimations(animation: 'Assets/animations/loading-circle-100.json'),

              Text('Welcome to Cache Airways', style: Styles.animationStyle),

              Spacer()
            ],
          ),
        )
    );
  }
}
