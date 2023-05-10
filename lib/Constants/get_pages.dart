import 'package:get/get.dart';
import '../BusinessLayer/Bindings/home_bindings.dart';
import '../BusinessLayer/Bindings/init_bindings.dart';
import '../PresentationLayer/Screens/Auth/login_screen.dart';
import '../PresentationLayer/Screens/Public/Bus_screen.dart';
import '../PresentationLayer/Screens/Public/HomeWorks_screen.dart';
import '../PresentationLayer/Screens/Public/Subjects_screen.dart';
import '../PresentationLayer/Screens/Public/vacation_screen.dart';
import '../PresentationLayer/Screens/Public/home_screen.dart';
import '../PresentationLayer/Screens/Public/subject_homeworks_screen.dart';
import '../PresentationLayer/Screens/Public/profile_screen.dart';
import '../PresentationLayer/Screens/Public/splash_screen.dart';
import 'get_routes.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
      name: AppRoutes.splashScreen,
      page: () => SplashScreen(),
      transition: Transition.leftToRightWithFade),
  GetPage(
      name: AppRoutes.loginScreen,
      page: () =>  LoginScreen(),
      transition: Transition.zoom,
      binding: InitBinding()),
  GetPage(
      name: AppRoutes.homeScreen,
      page: () => const HomeScreen(),
    binding: HomeBinding()
  ),
  GetPage(
    name: AppRoutes.subjectsScreen,
    page: () =>  SubjectsScreen(),
  ),
  GetPage(
    name: AppRoutes.homeWorksScreen,
    page: () => const HomeWorkScreen(),
  ),
  GetPage(
    name: AppRoutes.busScreen,
    page: () => const BusScreen(),
  ),
  GetPage(
    name: AppRoutes.profileScreen,
    page: () => const ProfileScreen(),
  ),
  GetPage(
    name: AppRoutes.subjectHomeWorks,
    page: () =>  SubjectHomeworksScreen(),
  ),
  GetPage(
    name: AppRoutes.vacations,
    page: () =>  VacationsScreen(),
  ),
  GetPage(
    name: AppRoutes.profileScreen,
    page: () => const ProfileScreen(),
  ),
];