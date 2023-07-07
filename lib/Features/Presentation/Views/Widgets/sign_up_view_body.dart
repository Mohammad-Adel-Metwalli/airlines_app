import 'package:airlines_app/Features/Presentation/Views/Widgets/sign_authentication_view_background_image.dart';
import 'package:airlines_app/Features/Presentation/Views/Widgets/sign_up_view_form.dart';
import 'package:flutter/material.dart';
import '../../../../Core/Widgets/project_logo.dart';
import '../../../../constants.dart';

class SignUpViewBody extends StatefulWidget
{
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody>
{
  final textStyleOfForm = const TextStyle(fontSize: 15, color: Constants.carmine);
  final textStyleOfFormButton = const TextStyle(fontSize: 20, color: Constants.babyPowder);

  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/dddepth-057.jpg'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        const SignAuthenticationViewBackGroundImage(image: 'Assets/Images/dddepth-057.jpg'),

        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),

              const ProjectLogo(image: 'Assets/Images/wepik-modern-sunshine-travel-agency-logo-202306280150418lcW.png'),

              const SignUpViewForm(),
            ],
          ),
        )
      ],
    );
  }
}


