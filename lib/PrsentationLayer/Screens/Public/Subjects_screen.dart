import 'package:flutter/material.dart';
import '../../../BussinessLayer/Controllers/subjects_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Subjects/Subject_item.dart';
import 'package:get/get.dart';

class SubjectsScreen extends StatelessWidget {
   SubjectsScreen({Key? key}) : super(key: key);
final SubjectsController subjectsController = Get.find();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(title: Text("المواد",style: UITextStyle.titleBold.copyWith(fontSize: 25))),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GetBuilder(
          init: subjectsController,
          builder: (context) {
            return SizedBox(
              height: Get.height-250,
              child: GridView.builder(
                itemCount: subjectsController.subjects.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,crossAxisSpacing: 20),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, i){
                  return   SubjectItem(subject: subjectsController.subjects[i],);
                },
              ),
            );
          }
        ),
      ),
    );
  }
}
