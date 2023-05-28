import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/user_controller.dart';
import '../../../Constants/get_routes.dart';
import '../../../Constants/text_styles.dart';
import '../../../main.dart';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SchoolDrawer extends StatelessWidget {
  SchoolDrawer({Key? key}) : super(key: key);
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
             // backgroundImage: NetworkImage(MyApp.appUser!.avatar),
              backgroundColor: UIColors.primary,
            ),

          ),
          ListTile(
              leading: const Icon(
                Icons.feedback,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text('الشكاوى',style: UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary)),
              onTap: ()=> Get.toNamed(AppRoutes.complaints)
          ),
          ListTile(
            leading: const Icon(
              Icons.auto_stories,
              color: UIColors.primary,
              size: 30,
            ),
            title: Text('المواد',style: UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary)),
            onTap: ()=> Get.toNamed(AppRoutes.subjectsScreen)
          ),
          ListTile(
              leading: const Icon(
                Icons.chrome_reader_mode_outlined,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text('الوظائف',style: UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary)),
              onTap: ()=> Get.toNamed(AppRoutes.homeWorksScreen)
          ),
          ListTile(
              leading: const Icon(
                Icons.calendar_month_sharp,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text('العطل',style: UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary)),
              onTap: ()=> Get.toNamed(AppRoutes.vacations)
          ),
          ListTile(
              leading: const Icon(
                Icons.task_alt,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text('النتائج',style: UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary)),
              onTap: ()=> Get.toNamed(AppRoutes.results)
          ),
          ListTile(
              leading: const Icon(
                Icons.checklist_rtl,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text('دوام الطالب',style: UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary)),
              onTap: ()=> Get.toNamed(AppRoutes.studentTime)
          ),
          ListTile(
              leading: const Icon(
                Icons.bus_alert,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text('الباص',style: UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary)),
              onTap: ()=> Get.toNamed(AppRoutes.busScreen)
          ),
          ListTile(
              leading: const Icon(
                Ionicons.alert_circle_sharp,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text('التنبيهات',style: UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary)),
              onTap: ()=> Get.toNamed(AppRoutes.alerts)
          ),
          ListTile(
              leading: const Icon(
                FontAwesomeIcons.moneyBill1,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text('الأقساط',style: UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary)),
              onTap: ()=> Get.toNamed(AppRoutes.installments)
          ),
          if (MyApp.appUser != null)
            ListTile(
              onTap: () async {
                await userController.logout();
              },
              leading: const Icon(
                Icons.logout,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text(
                "logout",
                style:  UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary),
              ),
            ),
        ],
      ),
    );
  }
}
