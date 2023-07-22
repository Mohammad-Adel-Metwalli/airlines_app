import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/dining_image.dart';
import 'package:airlines_app/Features/Home/Presentation/Views/Widgets/dining_image_text.dart';
import 'package:flutter/material.dart';

class Dining extends StatelessWidget
{
  const Dining({super.key});

  @override
  Widget build(BuildContext context)
  {
    return const Center(
      child: Column(
        children: [
          DiningImage(),

          DiningImageText()
        ],
      ),
    );
  }
}
