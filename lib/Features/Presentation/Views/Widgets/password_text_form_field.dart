import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'custom_log_in_button.dart';
import 'custom_sign_up_button.dart';

class PasswordTextFormField extends StatefulWidget
{
  const PasswordTextFormField({super.key, required this.obscure, required this.textStyleOfForm});
  final bool obscure;
  final TextStyle textStyleOfForm;

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField>
{
  late bool obscureText;
  @override
  void initState()
  {
    super.initState();
    obscureText = widget.obscure;
  }

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.03),
      child: TextFormField(
        onChanged: (data)
        {
          CustomSignUpButton.password = data;
          CustomLogInButton.password = data;
        },
        obscureText: !obscureText,
        decoration: InputDecoration(
            prefixIcon: const Icon(FontAwesomeIcons.lock, color: Colors.black, size: 25),
            label: Text('password', style: widget.textStyleOfForm),

            suffixIcon: IconButton(
                onPressed: ()
                {
                  if(obscureText == false)
                  {
                    obscureText = true;
                  }

                  else
                  {
                    obscureText = false;
                  }

                  setState(() {});
                },
                icon: Icon(obscureText == false ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash, color: Colors.black)
            ),

            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
        ),
      ),
    );
  }
}
