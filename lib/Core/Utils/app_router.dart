import 'package:airlines_app/Features/Presentation/Views/sign_in_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => const SignInView()
        )
      ]
  );
}