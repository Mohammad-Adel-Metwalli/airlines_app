import 'package:flutter/material.dart';

class SignAuthenticationViewBackGroundImage extends StatelessWidget
{
  const SignAuthenticationViewBackGroundImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: FadeInImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        placeholder: AssetImage(image),
      ),
    );
  }
}
