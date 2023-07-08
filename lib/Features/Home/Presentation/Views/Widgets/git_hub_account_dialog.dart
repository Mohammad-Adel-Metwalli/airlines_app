import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../../../constants.dart';

class GitHubAccountDialog extends StatelessWidget
{
  const GitHubAccountDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return AvatarGlow(
      glowColor: Constants.carmine,
      endRadius: 32,
      child: Material(
        elevation: 8.0,
        shape: const CircleBorder(),
        child: CircleAvatar(
          backgroundColor: Constants.carmine,
          radius: 30,
          child: CircleAvatar(
            backgroundColor: Constants.babyPowder,
            radius: 24,
            child: Lottie.asset(
                'Assets/animations/GitHub animation 3.json',
                height: 100,
                animate: true
            ),
          ),
        ),
      ),
    );
  }
}