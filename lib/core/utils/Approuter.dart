import 'package:education_management_system/features/About/presentation/view/AboutPage.dart';
import 'package:education_management_system/features/Contact%20us/presentation/view/ContactUs.dart';
import 'package:education_management_system/features/Courses/presentation/view/CoursesPage.dart';
import 'package:education_management_system/features/Courses/presentation/view/Widgets/Inside_Course_Details.dart';
import 'package:education_management_system/features/Courses/presentation/view/Widgets/course_content.dart';
import 'package:education_management_system/features/Courses/presentation/view/Widgets/each_course_gardes.dart';
import 'package:education_management_system/features/Courses/presentation/view/Widgets/professor_course_page.dart';
import 'package:education_management_system/features/Home/presentation/view/HomePage.dart';
import 'package:education_management_system/features/Login/presentation/View/LoginPage.dart';
import 'package:education_management_system/features/Professor/presentation/view/ProfessorPage.dart';
import 'package:education_management_system/features/Profile/presentation/view/Profile.dart';
import 'package:education_management_system/features/Splash/presentation/view/SplashView.dart';
import 'package:education_management_system/features/Students/presentation/view/students.dart';
import 'package:education_management_system/features/Students/presentation/view/widgets/StudentsDetailPage.dart';
import 'package:education_management_system/features/Students/presentation/view/widgets/Students_information.dart';
import 'package:go_router/go_router.dart';
import '../../features/Courses/data/Web_Course_data.dart';
import '../../features/Professor/presentation/view/Widgets/ProfileViewdetailspage.dart';
import '../../features/Students/presentation/view/widgets/each_course_student_information.dart';

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
        path: '/Inside_Course_Details.dart',
        builder: (context, state) => const InsideCourseDetails(),
      ),
      GoRoute(
        path: '/ProfessorPage',
        builder: (context, state) => const ProfessorPage(),
      ),
      GoRoute(
        path: '/course_content',
        builder: (context, state) =>  CourseContent(bckcolor: backcolors[0],image: courseImages[0]),
      ),
      GoRoute(
        path: '/Profile',
        builder: (context, state) =>  const ProfilePage(),
      ),
      
      GoRoute(
        path: '/ProfileViewdetailspage',
        builder: (context, state) =>  const ProfessorViewPagedetails(),
      ),
      // GoRoute(
      //   path: '/students',
      //   builder: (context, state) =>  const StudentsPage(),
      // ),
      // //each_course_gardes
      // GoRoute(
      //   path: '/StudentsDetailPage',
      //   builder: (context, state) =>  const StudentsDetailsPage(),
      // ),
      // GoRoute(
      //   path: '/Students_information',
      //   builder: (context, state) =>  const StudentInformation(),
      // ),
      GoRoute(
        path: '/each_course_gardes',
        builder: (context, state) =>  EachCourseGrades(),
      ),
      //each_course_student_information
      GoRoute(
        path: '/professor_course_page',
        builder: (context, state) =>  const ProfessorCoursePage(),
      ),
      GoRoute(
        path: '/each_course_student_information',
        builder: (context, state) =>   EachStudentInformation(),
      )
    ],

  );
}
