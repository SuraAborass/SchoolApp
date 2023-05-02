import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:school_app/Constants/text_styles.dart';
import '../../../Constants/get_routes.dart';
import '../../../main.dart';
import 'package:get/get.dart';

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
            //Get.toNamed(AppRoutes.);
            break;
          case 2:
            //Get.toNamed(AppRoutes.);
            break;
          case 3:
            Get.toNamed(AppRoutes.profileScreen);
            break;
          default:
        }
      },
      backgroundColor: UIColors.navBarColor,
      selectedItemColor: UIColors.navBarSelectedItem,
      unselectedItemColor:UIColors.iconColor,
      selectedFontSize: 16,
      unselectedFontSize: 16,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: UITextStyle.boldSmall,
      unselectedLabelStyle: UITextStyle.normalSmall,
      items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,size: 35,),
          label: "الرئيسية",
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.notifications,size: 35),
          label: "الإشعارات",
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.message,size: 35),
          label: "الرسائل",
        ),
        BottomNavigationBarItem(
          icon:  Icon(Icons.person,size: 35),
          label: "الملف الشخصي",
        ),
      ],
    );
  }
}
