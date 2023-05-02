import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:get/get.dart';
import '../../../Constants/get_routes.dart';
import '../../../Constants/text_styles.dart';

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
        ],
      ),
    );
  }
}
