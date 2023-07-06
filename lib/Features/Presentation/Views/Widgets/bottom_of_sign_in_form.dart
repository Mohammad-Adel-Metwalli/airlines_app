import 'package:airlines_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomOfSignInForm extends StatelessWidget
{
  const BottomOfSignInForm({super.key,});

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        const Spacer(),

        const Text('Don\'t have an account? '),

        GestureDetector(
            onTap: ()
            {
              GoRouter.of(context).replace('/signUp');
            },
            child: const Text('Register Now', style: Styles.textStyleOfForm)
        ),

        const Spacer()
      ],
    );
  }
}