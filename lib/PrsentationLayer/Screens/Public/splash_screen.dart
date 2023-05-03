import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import '../../../BussinessLayer/Controllers/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
   const SplashScreen({Key? key}) : super(key: key);
  //final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: UIColors.primary,
        bottomNavigationBar: Container(
          height : 20,
          color: UIColors.white,
        ),
        body: Center(
          child: Image.asset(
            'assets/images/logo_of_the_school.png',
            height: 150 ,
            width: 245,
          ),

        ));
  }
}
