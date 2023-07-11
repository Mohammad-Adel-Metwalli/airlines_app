import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/shimmer_view_body_items.dart';
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
  bool isLoading = false;
  @override
  void initState()
  {
    super.initState();
    shimmerLoading();
  }

  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/github.png'), context);
    precacheImage(const AssetImage('Assets/Images/LinkedIn.png'), context);
    precacheImage(const AssetImage('Assets/Images/Mohammad Adel Metwalli(GitHub).jpeg'), context);
  }

  void shimmerLoading()
  {
    Future.delayed(const Duration(seconds: 4), () => setState(() => isLoading = true));
  }

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        const HomeViewBackgroundImage(),

        Stack(
          children: [
            isLoading == false ? const ShimmerViewBodyItems() : const HomeViewBodyItems(),

            const CustomHomeAppBar()
          ],
        ),
      ],
    );
  }
}
