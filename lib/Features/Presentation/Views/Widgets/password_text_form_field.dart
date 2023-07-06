import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import '../../../../Core/Utils/styles.dart';
import 'custom_log_in_button.dart';
import 'custom_sign_up_button.dart';

class PasswordTextFormField extends StatefulWidget
{
  const PasswordTextFormField({super.key, required this.obscure,});
  final bool obscure;

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
        validator: (data)
        {
          if(data!.isEmpty)
          {
            return 'Field is required';
          }
          return null;
        },
        onChanged: (data)
        {
          CustomSignUpButton.password = data;
          CustomLogInButton.password = data;
        },
        obscureText: !obscureText,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            prefixIcon: const Icon(FontAwesomeIcons.lock, color: Colors.black, size: 25),
            label: const Text('password', style: Styles.textStyleOfForm),

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
