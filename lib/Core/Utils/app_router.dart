import 'package:airlines_app/Features/Home/Presentation/Views/home_view.dart';
import 'package:airlines_app/Features/Presentation/Views/sign_in_view.dart';
import 'package:airlines_app/Features/Presentation/Views/sign_up_view.dart';
import 'package:airlines_app/Features/Presentation/Views/splash_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  key: state.pageKey,
                  child: const HomeView(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
                        child: child
                    );
                  });
              // return CustomTransitionPage(
              //     key: state.pageKey,
              //     child: const SignInView(),
              //     transitionsBuilder: (context, animation, secondaryAnimation, child)
              //     {
              //       return FadeTransition(
              //           opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
              //           child: child
              //       );
              //     });
            }
        ),

        GoRoute(
            path: '/signUp',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  key: state.pageKey,
                  child: const SignUpView(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
                        child: child
                    );
                  });
            }
        ),

        GoRoute(
            path: '/splashView',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  key: state.pageKey,
                  child: const SplashView(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
                        child: child
                    );
                  });
            }
        ),

        GoRoute(
            path: '/homeView',
            pageBuilder: (context, state)
            {
              return CustomTransitionPage(
                  key: state.pageKey,
                  child: const HomeView(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child)
                  {
                    return FadeTransition(
                        opacity: CurveTween(curve: Curves.bounceInOut).animate(animation),
                        child: child
                    );
                  });
            }
        ),
      ]
  );
}