import 'package:education_management_system/features/Home/presentation/view/HomePage.dart';
import 'package:education_management_system/features/Login/presentation/View/LoginPage.dart';
import 'package:education_management_system/features/Splash/presentation/view/SplashView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/LoginPage',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/HomePage',
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
}
