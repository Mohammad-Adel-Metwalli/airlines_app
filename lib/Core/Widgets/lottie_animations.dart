import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimations extends StatefulWidget
{
  const LottieAnimations({super.key, required this.animation});
  final String animation;

  @override
  State<LottieAnimations> createState() => _LottieAnimationsState();
}

class _LottieAnimationsState extends State<LottieAnimations> with SingleTickerProviderStateMixin
{
  late AnimationController controller;

  @override
  void initState()
  {
    super.initState();
    controller = AnimationController(vsync: this);

    controller.addStatusListener((status)
    {
      if(status == AnimationStatus.completed)
      {
        Navigator.of(context).pop();
        controller.reset();
      }
    });
  }

  @override
  void dispose()
  {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return Lottie.asset(
        widget.animation,
        animate: true,
        height: 150,
        controller: controller,
        onLoaded: (composition)
        {
          controller.duration = composition.duration;
          controller.forward();
        });
  }
}
