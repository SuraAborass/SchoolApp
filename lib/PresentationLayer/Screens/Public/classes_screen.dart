import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../BusinessLayer/Controllers/program_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/program.dart';
import '../../Widgets/Program/calss_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Shimmers/homework_shimmer.dart';

class ClassesScreen extends StatelessWidget {
  ClassesScreen({Key? key}) : super(key: key);
  final ProgramController programController = Get.find();
  final Program program = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text("يوم ${program.day}",
                style: UITextStyle.titleBold.copyWith(fontSize: 25))),
        drawer: SchoolDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GetBuilder(
              init: programController,
              builder: (context) {
                return programController.loading.value == true
                  ?SizedBox(
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
                    itemCount: program.classes.length,
                    itemBuilder: (context, i) {
                      print(program.classes);
                      return ClassItem(
                        subjectClass: program.classes[i],
                      );
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}
