import 'dart:ui';
import 'package:airlines_app/Core/Widgets/project_logo.dart';
import 'package:airlines_app/Features/Presentation/Views/Widgets/sign_authentication_view_background_image.dart';
import 'package:airlines_app/constants.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SignInViewBody extends StatefulWidget
{
  const SignInViewBody({
    super.key,
  });
  static const press = false;

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> with SingleTickerProviderStateMixin
{
  final textStyleOfForm = const TextStyle(fontSize: 15, color: carmine);
  final textStyleOfFormButton = const TextStyle(fontSize: 20, color: babyPowder);
  late AnimationController controller;
  
  @override
  void didChangeDependencies() 
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/wing-airplane-flying-clouds.jpg'), context);
    precacheImage(const AssetImage('Assets/Images/wepik-modern-sunshine-travel-agency-logo-202306280150418lcW.png'), context);
  }
  
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
    return Stack(
      children: [
        const SignAuthenticationViewBackGroundImage(image: 'Assets/Images/wing-airplane-flying-clouds.jpg'),

        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),

              const ProjectLogo(image: 'Assets/Images/wepik-modern-sunshine-travel-agency-logo-202306280150418lcW.png'),

              Container(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.5,
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 1.5, color: Colors.white30)
                      ),

                      child: Column(
                        children: [
                          const Text('Sign In', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

                          const SizedBox(height: 40),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.03),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(FontAwesomeIcons.userTie, color: Colors.black, size: 25),
                                  label: Text('email', style: textStyleOfForm),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),

                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)
                                )
                              ),
                            ),
                          ),

                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.03),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(FontAwesomeIcons.lock, color: Colors.black, size: 25),
                                  label: Text('password', style: textStyleOfForm),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),

                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          ),

                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

                          GestureDetector(
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
                              child: Center(child: Text('Log In', style: textStyleOfFormButton)),
                            ),
                          ),

                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),

                          Row(
                            children: [
                              const Spacer(),

                              const Text('Don\'t have an account? '),

                              GestureDetector(
                                onTap: ()
                                {
                                  GoRouter.of(context).push('/signUp');
                                },
                                  child: Text('Register Now', style: textStyleOfForm)
                              ),

                              const Spacer()
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}