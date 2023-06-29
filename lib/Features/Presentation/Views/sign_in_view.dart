import 'package:flutter/material.dart';
import 'Widgets/sign_in_view_body.dart';

class SignInView extends StatefulWidget
{
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView>
{
  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      body: SignInViewBody(),
    );
  }
}

