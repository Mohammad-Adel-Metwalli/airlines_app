import 'package:flutter/material.dart';
import 'custom_home_app_bar.dart';
import 'home_view_background_image.dart';
import 'home_view_body_items.dart';

class HomeViewBody extends StatefulWidget
{
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody>
{
  @override
  void initState()
  {
    super.initState();
  }

  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/github.png'), context);
    precacheImage(const AssetImage('Assets/Images/LinkedIn.png'), context);
    precacheImage(const AssetImage('Assets/Images/Mohammad Adel Metwalli(GitHub).jpeg'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return const Stack(
      children: [
        HomeViewBackgroundImage(),

        Stack(
          children: [
            HomeViewBodyItems(),

            CustomHomeAppBar()
          ],
        ),
      ],
    );
  }
}
