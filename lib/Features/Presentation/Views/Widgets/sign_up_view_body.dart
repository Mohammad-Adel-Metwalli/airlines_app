import 'dart:ui';
import 'package:airlines_app/Features/Presentation/Views/Widgets/sign_authentication_view_background_image.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
  final textStyleOfForm = const TextStyle(fontSize: 15, color: carmine);
  final textStyleOfFormButton = const TextStyle(fontSize: 20, color: babyPowder);

  @override
  void didChangeDependencies()
  {
    super.didChangeDependencies();
    precacheImage(const AssetImage('Assets/Images/wing-airplane-flying-clouds.jpg'), context);
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
                      height: MediaQuery.sizeOf(context).height * 0.57,
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(width: 1.5, color: Colors.white30)
                      ),

                      child: Column(
                        children: [
                          const Text('Sign Up', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),

                          const SizedBox(height: 40),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.03),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(FontAwesomeIcons.userCircle, color: Colors.black, size: 25),
                                  label: Text('username', style: textStyleOfForm),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          ),

                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.03),

                            child: TextFormField(
                              decoration: InputDecoration(prefixIcon: const Icon(FontAwesomeIcons.userTie, color: Colors.black, size: 25),
                                  label: Text('email', style: textStyleOfForm),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          ),

                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width * 0.03),

                            child: TextFormField(
                              decoration: InputDecoration(prefixIcon: const Icon(FontAwesomeIcons.lock, color: Colors.black, size: 25),
                                  label: Text('password', style: textStyleOfForm),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25))
                              ),
                            ),
                          ),

                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

                          Container(
                            height: MediaQuery.sizeOf(context).height * 0.06,
                            width: MediaQuery.sizeOf(context).height * 0.2,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: carmine),

                            child: Center(child: Text('Sign Up', style: textStyleOfFormButton)),
                          ),

                          SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),

                          Row(
                            children: [
                              const Spacer(),

                              const Text('Already have an account? '),

                              GestureDetector(
                                  onTap: ()
                                  {
                                    GoRouter.of(context).pop();
                                  },

                                  child: Text('Log In', style: textStyleOfForm)
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
