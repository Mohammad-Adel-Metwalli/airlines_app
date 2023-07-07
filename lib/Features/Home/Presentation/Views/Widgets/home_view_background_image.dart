import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../constants.dart';

class HomeViewBackgroundImage extends StatelessWidget
{
  const HomeViewBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return SvgPicture.asset(
      'Assets/Images/ttten.svg',
      height: double.infinity,
      fit: BoxFit.cover,
      placeholderBuilder: (context)
      {
        return const Center(
            child: SpinKitFadingCircle(color: Constants.carmine)
        );
      },
    );
  }
}