import 'package:flutter/material.dart';

class ProjectLogo extends StatelessWidget
{
  const ProjectLogo({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context)
  {
    return Image.asset(
      image,
      height: 200,
      width: 200
    );
  }
}
