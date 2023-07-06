import 'package:airlines_app/constants.dart';
import 'package:flutter/material.dart';

import 'Widgets/splash_view_body.dart';

class SplashView extends StatefulWidget
{
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
{
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      backgroundColor: Constants.lightYellow,
      body: SplashViewBody()
    );
  }
}
