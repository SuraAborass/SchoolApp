import 'package:flutter/material.dart';
import '../../../BusinessLayer/Controllers/exam_result_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/ExamsResults/exam_result_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import 'package:get/get.dart';

import '../../Widgets/Shimmers/homework_shimmer.dart';

class ExamsResultsScreen extends StatelessWidget {
  ExamsResultsScreen({Key? key}) : super(key: key);
  final ExamResultsController examResultsController =
      Get.put(ExamResultsController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text("نتائج الامتحانات",
                style: UITextStyle.titleBold.copyWith(fontSize: 20))),
        drawer: SchoolDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GetBuilder(
              init: examResultsController,
              builder: (context) {
                return examResultsController.loading.value == true
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
                    itemCount: examResultsController.examResults.length,
                    itemBuilder: (context, i) {
                      return ExamResultItem(
                        examResult: examResultsController.examResults[i],
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
