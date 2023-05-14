import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/student_time_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/StudentTime/student_time_item.dart';


class StudentTimeScreen extends StatelessWidget {
   StudentTimeScreen({Key? key}) : super(key: key);
  final StudentTimeController studentTimeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(title: Text("دوام الطالب",style: UITextStyle.titleBold.copyWith(fontSize: 20))),
      drawer: SchoolDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GetBuilder(
            init: studentTimeController,
            builder: (context) {
              return SizedBox(
                height: Get.height-250,
                child: ListView.builder(
                  itemCount: studentTimeController.absences.length,
                  itemBuilder: (context, i){
                    return  StudentTimeItem(studentTime: studentTimeController.absences[i],);
                  },
                ),
              );
            }
        ),
      ),

    );
  }
}
