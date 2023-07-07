import 'package:airlines_app/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../../../../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'git_hub_account_dialog.dart';

class CustomHomeAppBarBodyItems extends StatelessWidget
{
  const CustomHomeAppBarBodyItems({
    super.key,
  });

  @override
  Widget build(BuildContext context)
  {
    return Row(
      children: [
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.04),

        IconButton(
            onPressed: ()
            {
              ZoomDrawer.of(context)?.toggle();
            },
            icon: const Icon(FontAwesomeIcons.barsStaggered, color: Constants.carmine, size: 25)
        ),

        const Text('Home', style: Styles.textStyleOfHomeAppBar),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.51),


        GestureDetector(
          onTap: ()
          {
            showDialog(context: context, builder: (context)
            {
              return Dialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),

                child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.2,
                    width: MediaQuery.sizeOf(context).width * 0.2,
                    child: const Center(child: Text('Hola'))
                ),
              );
            });
          },
          
          child: const GitHubAccountDialog(),
        ),

        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01)
      ],
    );
  }
}
