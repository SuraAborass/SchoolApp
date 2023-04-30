import 'package:flutter/material.dart';
import 'package:school_app/Constants/ui_colors.dart';
import 'package:get/get.dart';
import '../../../Constants/get_routes.dart';
import '../../../Constants/ui_text_styles.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(decoration: const BoxDecoration(color: UIColors.gray),
              accountName: Text("اسم الأم",style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
              accountEmail:  Text("mother@gmail.com",style:  UITextStyle.bodyNormal.copyWith(color: UIColors.lightBlack))
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
              color: UIColors.primary,
            ),
            title: Text('الملف الشخصي',style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
            onTap: () {}
          ),
          ListTile(
              leading: const Icon(
                Icons.event_note,
                color: UIColors.primary,
              ),
              title: Text('المواد',style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
              onTap: () => Get.toNamed(AppRoutes.subjectsScreen)
          ),
          ListTile(
              leading: const Icon(
                Icons.calendar_month_sharp,
                color: UIColors.primary,
              ),
              title: Text('العطل',style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
              onTap: () {}
          ),
          ListTile(
              leading: const Icon(
                Icons.home_repair_service,
                color: UIColors.primary,
              ),
              title: Text('الوظائف',style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
              onTap: () => Get.toNamed(AppRoutes.homeWorksScreen)
          ),
          ListTile(
              leading: const Icon(
                Icons.directions_bus,
                color: UIColors.primary,
              ),
              title: Text('الباص',style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
              onTap: () {}
          ),
        ],
      ),
    );
  }
}
