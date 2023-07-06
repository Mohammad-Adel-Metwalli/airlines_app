import 'package:flutter/material.dart';
import '../../../../Core/Utils/Functions/sign_up_user_function.dart';
import '../../../../Core/Utils/styles.dart';
import '../../../../constants.dart';

class CustomSignUpButton extends StatefulWidget
{
  const CustomSignUpButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;
  static String username = '';
  static String email = '';
  static String password = '';

  @override
  State<CustomSignUpButton> createState() => _CustomSignUpButtonState();
}

class _CustomSignUpButtonState extends State<CustomSignUpButton> with SingleTickerProviderStateMixin
{
  late AnimationController controller;

  @override
  void initState()
  {
    super.initState();
    controller = AnimationController(vsync: this);

    controller.addStatusListener((status)
    {
      if(status == AnimationStatus.completed)
      {
        Navigator.of(context).pop();
        controller.reset();
      }
    });
  }

  @override
  void dispose()
  {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: () async
      {
        if(widget.formKey.currentState!.validate())
        {
          signUpUser(context);
        }
      },

      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.06,
        width: MediaQuery.sizeOf(context).height * 0.2,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Constants.carmine),
        child: const Center(child: Text('Sign Up', style: Styles.textStyleOfFormButton)),
      ),
    );
  }
}
