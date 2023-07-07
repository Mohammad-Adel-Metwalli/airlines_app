import 'package:airlines_app/constants.dart';
import 'package:flutter/material.dart';
import 'custom_home_app_bar_body_items.dart';

class CustomHomeAppBarBody extends StatelessWidget
{
  const CustomHomeAppBarBody({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.110,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Constants.lightApricot, Constants.earthYellow]
        ),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      
      child: const CustomHomeAppBarBodyItems(),
    );
  }
}
