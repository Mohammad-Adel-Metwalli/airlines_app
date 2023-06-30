import 'package:airlines_app/Features/Presentation/Views/Widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'bottom_of_sign_in_form.dart';
import 'custom_log_in_button.dart';
import 'email_text_form_field.dart';

class SignInViewFormItems extends StatefulWidget
{
  const SignInViewFormItems({super.key});

  @override
  State<SignInViewFormItems> createState() => _SignInViewFormItemsState();
}

class _SignInViewFormItemsState extends State<SignInViewFormItems>
{
  final textStyleOfForm = const TextStyle(fontSize: 15, color: carmine);
  final textStyleOfFormButton = const TextStyle(fontSize: 20, color: babyPowder);
  bool obscure = false;

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        const Text('Sign In', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

        const SizedBox(height: 40),

        EmailTextFormField(textStyleOfForm: textStyleOfForm),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

        PasswordTextFormField(obscure: obscure, textStyleOfForm: textStyleOfForm),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

        CustomLogInButton(textStyleOfFormButton: textStyleOfFormButton),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),

        BottomOfSignInForm(textStyleOfForm: textStyleOfForm)
      ],
    );
  }
}
