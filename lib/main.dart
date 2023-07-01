import 'package:airlines_app/Core/Utils/app_router.dart';
import 'package:airlines_app/Core/Utils/assets_data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
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
