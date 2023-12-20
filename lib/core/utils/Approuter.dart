import 'package:education_management_system/features/About/presentation/view/AboutPage.dart';
import 'package:education_management_system/features/Contact%20us/presentation/view/ContactUs.dart';
import 'package:education_management_system/features/Courses/presentation/view/CoursesPage.dart';
import 'package:education_management_system/features/Home/presentation/view/HomePage.dart';
import 'package:education_management_system/features/Login/presentation/View/LoginPage.dart';
import 'package:education_management_system/features/Professor/presentation/view/ProfessorPage.dart';
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
      GoRoute(
        path: '/AboutPage',
        builder: (context, state) => const AboutPage(),
      ),
      GoRoute(
        path: '/ContactUs',
        builder: (context, state) => const ContactPage(),
      ),
      GoRoute(
        path: '/CoursesPage',
        builder: (context, state) => const CoursesPage(),
      ),
      GoRoute(
        path: '/ProfessorPage',
        builder: (context, state) => const ProfessorPage(),
      ),
      
    ],
  );
}
