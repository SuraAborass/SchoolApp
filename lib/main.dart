import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Constants/get_pages.dart';
import 'PrsentationLayer/Screens/Public/home_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale:Get.deviceLocale,
      title: 'School',
      getPages: getPages,
      home: const HomeScreen(),
    );
  }
}
