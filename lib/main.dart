import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'BussinessLayer/Bindings/init_bindings.dart';
import 'Constants/get_pages.dart';
import 'DataAcessLayer/Models/user.dart';
import 'PrsentationLayer/Screens/Auth/login_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static User? appUser;
  static int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Get.deviceLocale,
      title: 'School',
      initialBinding: InitBinding(),
      getPages: getPages,
      //home:  LoginScreen(),
    );
  }
}
