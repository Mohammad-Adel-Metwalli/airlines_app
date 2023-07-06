import 'package:flutter/material.dart';
import '../../../../Core/Utils/Functions/log_in_user_function.dart';
import '../../../../Core/Utils/styles.dart';
import '../../../../constants.dart';

class CustomLogInButton extends StatefulWidget
{
  const CustomLogInButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;
  static String email = '';
  static String password = '';


  @override
  State<CustomLogInButton> createState() => _CustomLogInButtonState();
}

class _CustomLogInButtonState extends State<CustomLogInButton> with SingleTickerProviderStateMixin
{
  bool checkIsExist = true;

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      onTap: ()
      {
        if (widget.formKey.currentState!.validate())
        {
          logInUser(context);
        }
      },

      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.06,
        width: MediaQuery.sizeOf(context).height * 0.2,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Constants.carmine),
        child: const Center(child: Text('Log In', style: Styles.textStyleOfFormButton)),
      ),
    );
  }
}
