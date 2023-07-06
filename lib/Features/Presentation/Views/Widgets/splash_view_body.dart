import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashViewBody extends StatefulWidget
{
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin
{
  late AnimationController controller;

  @override
  void initState()
  {
    super.initState();
    controller = AnimationController(vsync: this);
    navigateToHome();
  }

  void navigateToHome()
  {
    Future.delayed(const Duration(seconds: 4), ()
    {
      GoRouter.of(context).replace('/homeView');
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
    return Center(
      child: Lottie.asset(
          'Assets/animations/19423-airplane.json',
          animate: true,
          height: MediaQuery.sizeOf(context).height * 0.5,
          controller: controller,
          onLoaded: (composition)
          {
            controller.duration = composition.duration;
            controller.forward();
          }),
    );
  }
}
