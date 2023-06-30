import 'package:airlines_app/Features/Presentation/Views/Widgets/custom_log_in_button.dart';
import 'package:airlines_app/Features/Presentation/Views/Widgets/custom_sign_up_button.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class EmailTextFormField extends StatelessWidget
{
  const EmailTextFormField({
    super.key,
    required this.textStyleOfForm,
  });

  final TextStyle textStyleOfForm;

  @override
  Widget build(BuildContext context)
  {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.03),
      child: TextFormField(
        onChanged: (data)
        {
          CustomSignUpButton.email = data;
          CustomLogInButton.email = data;
        },
        decoration: InputDecoration(
            prefixIcon: const Icon(FontAwesomeIcons.userTie, color: Colors.black, size: 25),
            label: Text('email', style: textStyleOfForm),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),

            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)
            )
        ),
      ),
    );
  }
}