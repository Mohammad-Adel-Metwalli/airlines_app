import 'package:airlines_app/Features/Presentation/Views/Widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
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
  bool obscure = false;
  GlobalKey<FormState> keyForm = GlobalKey();

  @override
  Widget build(BuildContext context)
  {
    return Form(
      key: keyForm,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Sign In', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

            const SizedBox(height: 40),

            const EmailTextFormField(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            PasswordTextFormField(obscure: obscure),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            CustomLogInButton(formKey: keyForm),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),

            const BottomOfSignInForm()
          ],
        ),
      ),
    );
  }
}
