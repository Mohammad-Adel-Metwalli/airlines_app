import 'package:avatar_glow/avatar_glow.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class GitHubAccountDialog extends StatelessWidget
{
  const GitHubAccountDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return const AvatarGlow(
      glowColor: Constants.carmine,
      endRadius: 32,
      child: Material(
        elevation: 8.0,
        shape: CircleBorder(),
        child: CircleAvatar(
          backgroundColor: Constants.carmine,
          radius: 26,
          child: CircleAvatar(
            backgroundColor: Constants.babyPowder,
            radius: 20,
            child: Icon(FontAwesomeIcons.github, color: Constants.majorelleBlue, size: 26),
          ),
        ),
      ),
    );
  }
}