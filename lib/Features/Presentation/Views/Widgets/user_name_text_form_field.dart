import 'package:airlines_app/Features/Presentation/Views/Widgets/custom_sign_up_button.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class UserNameTextFormField extends StatelessWidget
{
  const UserNameTextFormField({
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
        validator: (data)
        {
          if (data!.isEmpty)
          {
            return 'Field is required';
          }

          return null;
        },
        onChanged: (data)
        {
          CustomSignUpButton.username = data;
        },

        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            prefixIcon: const Icon(FontAwesomeIcons.userCircle, color: Colors.black, size: 25),
            label: Text('username', style: textStyleOfForm),
            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
        ),
      ),
    );
  }
}