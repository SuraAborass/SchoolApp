import 'package:flutter/material.dart';
import 'package:school_app/Constants/ui_colors.dart';
import '../../../main.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: MyApp.currentPage,
      onTap: (index) {
        MyApp.currentPage = index;
        // switch (index) {
        //   case 0:
        //     Get.toNamed(AppRoutes.homepage);
        //     break;
        //   case 1:
        //     Get.toNamed(AppRoutes.notifications);
        //     break;
        //   case 2:
        //     Get.toNamed(AppRoutes.myBag);
        //     break;
        //   case 3:
        //     Get.toNamed(AppRoutes.favorites);
        //     break;
        //   case 4:
        //
        //     break;
        //   default:
        // }
      },
      backgroundColor: UIColors.navBarColor,
      selectedItemColor: UIColors.navBarSelectedItem,
      unselectedItemColor:UIColors.iconColor.withOpacity(.5),
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
