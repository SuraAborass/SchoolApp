import 'package:get/get.dart';
import '../PrsentationLayer/Screens/Public/home_screen.dart';
import 'get_routes.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
      name: AppRoutes.homeScreen,
      page: () => const HomeScreen(),
  ),
];