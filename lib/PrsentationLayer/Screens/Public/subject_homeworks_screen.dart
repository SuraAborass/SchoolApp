import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BussinessLayer/Controllers/subjects_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/HomeWorks/subject_homeworks_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../../DataAcessLayer/Models/subject.dart';

class SubjectHomeworksScreen extends StatelessWidget {
  SubjectHomeworksScreen({Key? key}) : super(key: key);
  final SubjectsController subjectsController = Get.find();
  final Subject  subject = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(title: Text("وظائف الرياضيات",style: UITextStyle.titleBold.copyWith(fontSize: 20))),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: GetBuilder(
            init: subjectsController,
            builder: (context) {
              return SizedBox(
                height: Get.height-250,
                child: ListView.builder(
                  itemCount:subject.homeworks.length,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, i){
                    return   SubjectHomeworksItem(homeWork: subject.homeworks[i],);
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}
