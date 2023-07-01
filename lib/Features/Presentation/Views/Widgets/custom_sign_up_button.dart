import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';

class CustomSignUpButton extends StatefulWidget
{
  const CustomSignUpButton({
    super.key,
    required this.textStyleOfFormButton, required this.formKey,
  });

  final TextStyle textStyleOfFormButton;
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
      onTap: ()
      {
        if(widget.formKey.currentState!.validate())
        {
          signUpUser(context);

          /*showDialog(
              builder: (context)
              {
                return Dialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.2,
                    child: Lottie.asset('Assets/animations/Network Error.json',
                        animate: true,
                        height: 200,
                        controller: controller, onLoaded: (composition) {
                      controller.duration = composition.duration;
                      controller.forward();
                    }),
                  ),
                );
              },
              context: context
          );*/
        }
      },

      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.06,
        width: MediaQuery.sizeOf(context).height * 0.2,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: carmine),
        child: Center(child: Text('Sign Up', style: widget.textStyleOfFormButton)),
      ),
    );
  }

  Future<void> signUpUser(BuildContext context) async
  {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: CustomSignUpButton.email, password: CustomSignUpButton.password);
    print('Hola');
  }
}
