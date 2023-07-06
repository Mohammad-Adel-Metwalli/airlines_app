import 'package:airlines_app/Core/Widgets/failure_animation_dialog.dart';
import 'package:airlines_app/Core/Widgets/success_animation_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../Features/Presentation/Views/Widgets/custom_sign_up_button.dart';

Future<void> signUpUser(context) async
{
  try
  {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: CustomSignUpButton.email, password: CustomSignUpButton.password);
    showDialog(
        context: context,
        builder: (context)
        {
          return const SuccessAnimationDialog();
        }
    );

    Future.delayed(const Duration(seconds: 3), ()
    {
      GoRouter.of(context).replace('/splashView');
    });
  }

  on FirebaseAuthException catch (e)
  {
    if (e.code == 'weak-password')
    {
      showDialog(
          context: context,
          builder: (context)
          {
            return const FailureAnimationDialog(errorMessage: 'This password is weak\nPlease try again');
          }
      );
    }

    else if (e.code == 'email-already-in-use')
    {
      showDialog(
          context: context,
          builder: (context)
          {
            return const FailureAnimationDialog(errorMessage: 'The account already exists for that email');
          }
      );
    }
  }
}