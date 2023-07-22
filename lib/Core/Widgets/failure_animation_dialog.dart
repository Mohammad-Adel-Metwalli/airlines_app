import 'package:flutter/material.dart';
import '../../constants.dart';
import '../Utils/styles.dart';
import 'lottie_animations.dart';

class FailureAnimationDialog extends StatelessWidget
{
  const FailureAnimationDialog({
    super.key, required this.errorMessage,
  });
  final String errorMessage;

  @override
  Widget build(BuildContext context)
  {
    return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Constants.lightYellow,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.3,
          child: Column(
            children: [
              const Spacer(),

              const LottieAnimations(animation: 'Assets/animations/133245-wrong.json'),

              Text(errorMessage, style: Styles.animationStyle, textAlign: TextAlign.center),

              const Spacer(),
            ],
          ),
        )
    );
  }
}