import 'package:flutter/material.dart';
import '../../../BusinessLayer/Controllers/homeworks_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/HomeWorks/home_work_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import 'package:get/get.dart';


class HomeWorkScreen extends StatelessWidget {
   HomeWorkScreen({Key? key}) : super(key: key);
final HomeworksController homeworksController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(title: Text("الوظائف",style: UITextStyle.titleBold.copyWith(fontSize: 25))),
      drawer: SchoolDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder(
          init: homeworksController,
          builder: (context) {
            return SizedBox(
              child: ListView.builder(
                itemCount: homeworksController.homeworks.length,
                itemBuilder: (context, i){
                  return   HomeWorkItem(homeWork: homeworksController.homeworks[i],);
                },
              ),
            );
          }
        ),
      ),
    );
  }
}
