import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomOfSignUpForm extends StatelessWidget
{
  const BottomOfSignUpForm({
    super.key,
    required this.textStyleOfForm,
  });

  final TextStyle textStyleOfForm;

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
              GoRouter.of(context).pop();
            },
            child: Text('Log In', style: textStyleOfForm)
        ),

        const Spacer()
      ],
    );
  }
}