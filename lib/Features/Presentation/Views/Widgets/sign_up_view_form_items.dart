import 'package:airlines_app/Features/Presentation/Views/Widgets/bottom_of_sign_up_form.dart';
import 'package:airlines_app/Features/Presentation/Views/Widgets/custom_sign_up_button.dart';
import 'package:airlines_app/Features/Presentation/Views/Widgets/password_text_form_field.dart';
import 'package:airlines_app/Features/Presentation/Views/Widgets/user_name_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'email_text_form_field.dart';

class SignUpViewFormItems extends StatefulWidget
{
  const SignUpViewFormItems({super.key});


  @override
  State<SignUpViewFormItems> createState() => _SignUpViewFormItemsState();
}

class _SignUpViewFormItemsState extends State<SignUpViewFormItems>
{
  final textStyleOfForm = const TextStyle(fontSize: 15, color: Constants.carmine);
  final textStyleOfFormButton = const TextStyle(fontSize: 20, color: Constants.babyPowder);
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
            const Text('Sign Up', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

            const SizedBox(height: 40),

            const UserNameTextFormField(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            const EmailTextFormField(),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

            PasswordTextFormField(obscure: obscure),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

            CustomSignUpButton(formKey: keyForm),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),

            const BottomOfSignUpForm()
          ],
        ),
      ),
    );
  }
}
