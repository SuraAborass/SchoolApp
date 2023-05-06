import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:get/get.dart';
import '../../../BussinessLayer/Controllers/user_controller.dart';
import '../../../Constants/get_routes.dart';
import '../../../Constants/text_styles.dart';
import '../../../main.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({Key? key}) : super(key: key);
final UserController userController = Get.find();
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(decoration: const BoxDecoration(color: UIColors.gray),
              accountName: Text(MyApp.appUser != null ? MyApp.appUser!.name : "اسم الأم",
                  style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
              accountEmail:  Text( MyApp.appUser != null ? MyApp.appUser!.phone : "",
                  style:  UITextStyle.bodyNormal.copyWith(color: UIColors.lightBlack)),
            currentAccountPicture: const CircleAvatar(
              backgroundColor: UIColors.primary,
            ),

          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: UIColors.primary,
            ),
            title: Text('الملف الشخصي',style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
            onTap: () {}
          ),
          if (MyApp.appUser != null)
            ListTile(
              onTap: () async {
                await userController.logout();
              },
              leading: const Icon(
                Icons.logout,
                color: UIColors.primary,
              ),
              title: Text(
                "logout",
                style:  UITextStyle.titleBold.copyWith(color: UIColors.primary),
              ),
            ),
        ],
      ),
    );
  }
}
