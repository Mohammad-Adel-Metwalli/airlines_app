import 'package:airlines_app/Core/Utils/Functions/github_link_account_function.dart';
import 'package:airlines_app/constants.dart';
import 'package:flutter/material.dart';
import '../../../../../Core/Utils/Functions/linked_in_link_account_function.dart';

class AccountInformation extends StatelessWidget
{
  const AccountInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.015),

        const CircleAvatar(
          radius: 50,
          backgroundColor: Constants.earthYellow,
          child: CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('Assets/Images/Mohammad Adel Metwalli(GitHub).jpeg'),
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        const Text('Mohammad Adel Metwalli\nFlutter Developer', style: TextStyle(color: Constants.carmine, fontWeight: FontWeight.bold, ), textAlign: TextAlign.center),

        Divider(
          height: MediaQuery.sizeOf(context).height * 0.01,
          color: Constants.navyBlue,
          thickness: 1,
          indent: 50,
          endIndent: 50,
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.018),

        GestureDetector(
          onTap: linkedInLinkAccount,
          child: Card(
            color: Constants.lightApricot,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.065,
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.sizeOf(context).height * 0.01),

                  Image.asset('Assets/Images/LinkedIn.png', height: 50),

                  const Text('Mohammad Adel Metwalli', style: TextStyle(color: Constants.linkedInColor, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: MediaQuery.sizeOf(context).height * 0.01),

        GestureDetector(
          onTap: gitHubLinkAccount,
          child: Card(
            color: Constants.lightApricot,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.065,
              width: MediaQuery.sizeOf(context).width * 0.6,
              child: Row(
                children: [
                  SizedBox(width: MediaQuery.sizeOf(context).height * 0.015),

                  Image.asset('Assets/Images/github.png', height: 41),

                  SizedBox(width: MediaQuery.sizeOf(context).height * 0.005),

                  const Text('Mohammad Adel Metwalli', style: TextStyle(color: Constants.majorelleBlue, fontWeight: FontWeight.bold), textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}