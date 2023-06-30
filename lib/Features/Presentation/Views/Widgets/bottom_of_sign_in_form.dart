import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomOfSignInForm extends StatelessWidget
{
  const BottomOfSignInForm({
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

        const Text('Don\'t have an account? '),

        GestureDetector(
            onTap: ()
            {
              GoRouter.of(context).push('/signUp');
            },
            child: Text('Register Now', style: textStyleOfForm)
        ),

        const Spacer()
      ],
    );
  }
}