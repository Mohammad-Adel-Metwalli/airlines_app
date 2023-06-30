import 'package:flutter/material.dart';

class SignAuthenticationViewBackGroundImage extends StatelessWidget
{
  const SignAuthenticationViewBackGroundImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Image.asset(
        image,
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
        // placeholder: AssetImage(image),
      ),
    );
  }
}
