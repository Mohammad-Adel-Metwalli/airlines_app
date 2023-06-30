import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../constants.dart';

class CustomSignUpButton extends StatefulWidget
{
  const CustomSignUpButton({
    super.key,
    required this.textStyleOfFormButton,
  });

  final TextStyle textStyleOfFormButton;
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
        showDialog(context: context, builder: (context)
        {
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: Lottie.asset(
                  'Assets/animations/96245-success.json',
                  animate: true,
                  height: 200,
                  controller: controller,
                  onLoaded: (composition)
                  {
                    controller.duration = composition.duration;
                    controller.forward();
                  }
              ),
            ),
          );
        });
      },

      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.06,
        width: MediaQuery.sizeOf(context).height * 0.2,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: carmine),
        child: Center(child: Text('Sign Up', style: widget.textStyleOfFormButton)),
      ),
    );
  }
}
