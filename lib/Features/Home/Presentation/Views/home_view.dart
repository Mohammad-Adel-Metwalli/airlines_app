import 'package:airlines_app/Features/Home/Presentation/Views/menu_view.dart';
import 'package:airlines_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'Widgets/home_view_body.dart';

class HomeView extends StatefulWidget
{
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
{
  final drawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.babyPowder,
        body: ZoomDrawer(
          controller: drawerController,
          style: DrawerStyle.style1,
          menuScreen: const MenuView(),
          moveMenuScreen: false,
          mainScreen: const HomeViewBody(),
          borderRadius: 24,
          angle: 0,
          showShadow: false,
          slideWidth: MediaQuery.of(context).size.width * .75,
          openCurve: Curves.fastOutSlowIn,
          closeCurve: Curves.bounceIn,
        ),
      ),
    );
  }
}
