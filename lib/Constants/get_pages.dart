import 'package:get/get.dart';
import '../PrsentationLayer/Screens/Public/Bus_screen.dart';
import '../PrsentationLayer/Screens/Public/HomeWorks_screen.dart';
import '../PrsentationLayer/Screens/Public/Subjects_screen.dart';
import '../PrsentationLayer/Screens/Public/home_screen.dart';
import 'get_routes.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
      name: AppRoutes.homeScreen,
      page: () => const HomeScreen(),
  ),
  GetPage(
    name: AppRoutes.subjectsScreen,
    page: () => const SubjectsScreen(),
  ),
  GetPage(
    name: AppRoutes.homeWorksScreen,
    page: () => const HomeWorkScreen(),
  ),
  GetPage(
    name: AppRoutes.busScreen,
    page: () => const BusScreen(),
  ),
];