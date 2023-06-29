
import 'package:airlines_app/Core/Utils/app_router.dart';
import 'package:airlines_app/Core/Utils/assets_data.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const AirLinesApp());
}

class AirLinesApp extends StatelessWidget
{
  const AirLinesApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(fontFamily: AssetsData.elMessiriFont),
    );
  }
}
