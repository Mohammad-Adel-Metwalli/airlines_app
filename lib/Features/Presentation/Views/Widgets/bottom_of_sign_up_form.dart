import 'package:airlines_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomOfSignUpForm extends StatelessWidget
{
  const BottomOfSignUpForm({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        const Text('Already have an account? '),

        GestureDetector(
            onTap: ()
            {
              GoRouter.of(context).replace('/');
            },
            child: const Text('Log In', style: Styles.textStyleOfForm)
        ),

        const Spacer()
      ],
    );
  }
}