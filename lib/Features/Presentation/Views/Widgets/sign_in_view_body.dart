import 'package:airlines_app/Core/Widgets/project_logo.dart';
import 'package:airlines_app/Features/Presentation/Views/Widgets/sign_authentication_view_background_image.dart';
import 'package:airlines_app/Features/Presentation/Views/Widgets/sign_in_view_form.dart';
import 'package:flutter/material.dart';

class SignInViewBody extends StatefulWidget
{
  const SignInViewBody({
    super.key,
  });

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody>
{
  @override
  void didChangeDependencies() 
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/dddepth-030.jpg'), context);
  }

  @override
  Widget build(BuildContext context)
  {
    return Stack(
      children: [
        const SignAuthenticationViewBackGroundImage(image: 'Assets/Images/dddepth-030.jpg'),

        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),

              const ProjectLogo(image: 'Assets/Images/wepik-modern-sunshine-travel-agency-logo-202306280150418lcW.png'),

              const SignInViewForm(),
            ],
          ),
        )
      ],
    );
  }
}