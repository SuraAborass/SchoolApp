import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/PresentationLayer/Widgets/Public/SizedBoxHeight.dart';
import 'package:school_app/PresentationLayer/Widgets/Public/SizedBoxWidth.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../Constants/ui_styles.dart';
import '../../../main.dart';
import '../../Widgets/Home/Alerts_item.dart';
import '../../Widgets/Home/Bus_item.dart';
import '../../Widgets/Home/Complaints_item.dart';
import '../../Widgets/Home/HomeWorks_item.dart';
import '../../Widgets/Home/Installments_item.dart';
import '../../Widgets/Home/ResultsItem_item.dart';
import '../../Widgets/Home/StudentTime_item.dart';
import '../../Widgets/Home/Subjects_item.dart';
import '../../Widgets/Home/TeacherNotes_item.dart';
import '../../Widgets/Home/Vacations_item.dart';
import '../../Widgets/Public/AppBar.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: UIColors.white,
        appBar: mainAppBar(context),
        extendBodyBehindAppBar: true,
        drawer: SchoolDrawer(),
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 300,
                width: Get.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/school-ph.jpg"),
                      opacity: .1,
                      fit: BoxFit.cover),
                  color: UIColors.primary,
                  borderRadius: radiusbottomright,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      const Positioned(
                        top: 10,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage(
                            "assets/images/app_icon.jpg",
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: ListTile(
                            title: Text(
                              MyApp.appUser != null
                                  ? "${MyApp.appUser!.students[0].firstName} ${MyApp.appUser!.students[0].secondName}"
                                  : "اسم الطالب",
                              style: UITextStyle.titleBold,
                              textAlign: TextAlign.center,
                            ),
                            subtitle: Text( MyApp.appUser != null
                                ?
                                "${MyApp.appUser!.students[0].classroom}-${MyApp.appUser!.students[0].grade}"
                                :"اسم الشعبة-اسم الصف",
                                style: UITextStyle.bodyNormal,
                                textAlign: TextAlign.center),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  const SizedBoxHeight(),
                  Row(
                    children: [
                      const SizedBoxWidth(),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "مرحباً بك:",
                              style: UITextStyle.bodyNormal
                                  .copyWith(fontSize: 20)),
                          TextSpan(
                              text:  MyApp.appUser!= null
                                  ? MyApp.appUser!.students[0].motherName+""
                                  :" اسم الأم ",
                              style: UITextStyle.bodyNormal.copyWith(
                                  color: UIColors.primary, fontSize: 20))
                        ]),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 14.0, left: 14.0),
                      child: SizedBox(
                        child: GridView(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 30,
                                  mainAxisSpacing: 0),
                          children: const [
                            SubjectsItem(),
                            HomeWorksItem(),
                            VacationsItem(),
                            ResultsItem(),
                            StudentTimeItem(),
                            BusItem(),
                            AlertsItem(),
                            InstallmentsItem(),
                            ComplaintsItem(),
                            TeacherNotesItem()
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
