import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../Features/Presentation/Views/Widgets/custom_log_in_button.dart';
import '../../Widgets/failure_animation_dialog.dart';
import '../../Widgets/success_animation_dialog.dart';

Future<void> logInUser(context) async
{
  try
  {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: CustomLogInButton.email, password: CustomLogInButton.password);
    showDialog(
        context: context,
        builder: (context)
        {
          return const SuccessAnimationDialog();
        });

    Future.delayed(const Duration(seconds: 3), ()
    {
      GoRouter.of(context).replace('/splashView');
    });
  }

  on FirebaseAuthException catch (e)
  {
    if (e.code == 'user-not-found')
    {
      showDialog(
          context: context,
          builder: (context)
          {
            return const FailureAnimationDialog(errorMessage: 'Email is wrong\nPlease try again');
          });
    }

    else if (e.code == 'wrong-password')
    {
      showDialog(
          context: context,
          builder: (context)
          {
            return const FailureAnimationDialog(errorMessage: 'Password is wrong\nPlease try again');
          });
    }
  }
}
