import 'package:flutter/material.dart';
import '../../../BusinessLayer/Controllers/exam_result_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/ExamsResults/exam_result_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import 'package:get/get.dart';

class ExamsResultsScreen extends StatelessWidget {
   ExamsResultsScreen({Key? key}) : super(key: key);
final ExamResultsController examResultsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(
          title: Text("نتائج الامتحانات",
              style: UITextStyle.titleBold.copyWith(fontSize: 20))),
      drawer: SchoolDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child:GetBuilder(
            init: examResultsController,
            builder: (context) {
              return SizedBox(
                height: Get.height-170,
                child: ListView.builder(
                  itemCount: examResultsController.examResults.length,
                  itemBuilder: (context, i){
                    return  ExamResultItem(examResult: examResultsController.examResults[i],);
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}
