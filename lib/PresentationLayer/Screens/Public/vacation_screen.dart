import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../BusinessLayer/Controllers/vacation_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';

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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                color: UIColors.calendar,
                height: 365,
                width: 365,
                child: TableCalendar(
                  locale: "en_US",
                  headerStyle: const HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  rowHeight: 43,
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.now(), //DateTime.utc(2010, 1, 1),
                  lastDay: DateTime.now(), //
                ),
              ),
            ),
          )),
    );
  }
}
