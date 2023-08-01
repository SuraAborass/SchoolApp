import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:school_app/Constants/text_styles.dart';

import '../../../Constants/get_routes.dart';
import '../../../main.dart';

class SchoolBottomNavigationBar extends StatelessWidget {
  const SchoolBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: MyApp.currentPage,
      onTap: (index) {
        MyApp.currentPage = index;
        switch (index) {
          case 0:
            Get.toNamed(AppRoutes.homeScreen);
            break;
          case 1:
            Get.toNamed(AppRoutes.notificationsScreen);
            break;
          case 2:
            Get.toNamed(AppRoutes.program);
            break;
          case 3:
            Get.toNamed(AppRoutes.profileScreen);
            break;
          default:
        }
      },
      backgroundColor: UIColors.secondary,
      selectedItemColor: UIColors.white,
      unselectedItemColor: UIColors.white.withOpacity(.5),
      selectedFontSize: 16,
      unselectedFontSize: 16,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: UITextStyle.boldSmall,
      unselectedLabelStyle: UITextStyle.normalSmall,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 35,
          ),
          label: "الرئيسية",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications, size: 35),
          label: "الإشعارات",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_view_week, size: 35),
          label: "برنامج الدوام",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person, size: 35),
          label: "الملف الشخصي",
        ),
      ],
    );
  }
}
