import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../BusinessLayer/Controllers/vacation_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Home/Vacations_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Shimmers/homework_shimmer.dart';
import '../../Widgets/Vacations/vacation_item.dart';

class VacationsScreen extends StatelessWidget {
  VacationsScreen({Key? key}) : super(key: key);
  final VacationController vacationController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          bottomNavigationBar: const SchoolBottomNavigationBar(),
          appBar: schoolAppBar(
              title: Text("العطل",
                  style: UITextStyle.titleBold.copyWith(fontSize: 20))),
          drawer: SchoolDrawer(),
          body: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: GetBuilder(
                init: vacationController,
                builder: (context) {
                  return RefreshIndicator(
                      onRefresh: () async {
                        vacationController.getVacations();
                      },
                      child: vacationController.loading.value == true
                          ? SizedBox(
                        height: Get.height - 250,
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return const HomeworkShimmer();
                          },
                        ),
                      )
                      :SizedBox(
                        height: Get.height - 170,
                        child: ListView.builder(
                          itemCount: vacationController.vacations.length,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, i) {
                            return  VacationItem(
                              vacation: vacationController.vacations[i],
                            );
                          },
                        ),
                      ));
                }),
          ),),
    );
  }
}
