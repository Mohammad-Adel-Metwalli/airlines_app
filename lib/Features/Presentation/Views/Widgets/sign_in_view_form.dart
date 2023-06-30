import 'dart:ui';
import 'package:airlines_app/Features/Presentation/Views/Widgets/sign_in_view_form_items.dart';
import 'package:flutter/material.dart';

class SignInViewForm extends StatelessWidget
{
  const SignInViewForm({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.5,
            width: MediaQuery.sizeOf(context).width * 0.8,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.3),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(width: 1.5, color: Colors.white30)
            ),

            child: const SignInViewFormItems(),
          ),
        ),
      ),
    );
  }
}
