import 'package:get/get.dart';
import '../BusinessLayer/Bindings/home_bindings.dart';
import '../BusinessLayer/Bindings/init_bindings.dart';
import '../PresentationLayer/Screens/Auth/login_screen.dart';
import '../PresentationLayer/Screens/Private/complaints_screen.dart';
import '../PresentationLayer/Screens/Private/messages_screen.dart';
import '../PresentationLayer/Screens/Public/Bus_screen.dart';
import '../PresentationLayer/Screens/Public/HomeWorks_screen.dart';
import '../PresentationLayer/Screens/Public/Subjects_screen.dart';
import '../PresentationLayer/Screens/Public/alerts_screen.dart';
import '../PresentationLayer/Screens/Public/exams_results_screen.dart';
import '../PresentationLayer/Screens/Public/installment_screen.dart';
import '../PresentationLayer/Screens/Public/notifications_screen.dart';
import '../PresentationLayer/Screens/Public/student_time_screen.dart';
import '../PresentationLayer/Screens/Public/teacher_notes_screen.dart';
import '../PresentationLayer/Screens/Public/vacation_screen.dart';
import '../PresentationLayer/Screens/Public/home_screen.dart';
import '../PresentationLayer/Screens/Public/subject_homeworks_screen.dart';
import '../PresentationLayer/Screens/Private/profile_screen.dart';
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
    name: AppRoutes.notificationsScreen,
    page: () =>  NotificationsScreen(),
  ),
  GetPage(
    name: AppRoutes.messages,
    page: () => const MessagesScreen(),
  ),
  GetPage(
    name: AppRoutes.subjectsScreen,
    page: () =>  SubjectsScreen(),
  ),
  GetPage(
    name: AppRoutes.homeWorksScreen,
    page: () =>  HomeWorkScreen(),
  ),
  GetPage(
    name: AppRoutes.busScreen,
    page: () =>  BusScreen(),
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
    transition: Transition.fadeIn
  ),
  GetPage(
    name: AppRoutes.studentTime,
    page: () =>  StudentTimeScreen(),
    transition: Transition.rightToLeftWithFade
  ),
  GetPage(
      name: AppRoutes.results,
      page: () =>  ExamsResultsScreen(),
      transition: Transition.cupertino
  ),
  GetPage(
      name: AppRoutes.alerts,
      page: () =>  AlertsScreen(),
      transition: Transition.circularReveal
  ),
  GetPage(
      name: AppRoutes.installments,
      page: () =>  InstallmentScreen(),
      transition: Transition.rightToLeftWithFade
  ),
  GetPage(
      name: AppRoutes.complaints,
      page: () =>  ComplaintsScreen(),
      transition: Transition.rightToLeftWithFade
  ),
  GetPage(
      name: AppRoutes.teacherNotes,
      page: () =>  TeacherNotesScreen(),
      transition: Transition.fadeIn
  ),
];