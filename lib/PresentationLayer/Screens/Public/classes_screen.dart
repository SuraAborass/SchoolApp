import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../BusinessLayer/Controllers/program_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/class.dart';
import '../../../DataAccessLayer/Models/program.dart';
import '../../Widgets/Program/calss_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';

class ClassesScreen extends StatelessWidget {
   ClassesScreen({Key? key}) : super(key: key);
  final ProgramController programController = Get.find();
  final Program program = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(title: Text("يوم ${program.day}",style: UITextStyle.titleBold.copyWith(fontSize: 25))),
      drawer: SchoolDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GetBuilder(
            init: programController,
            builder: (context) {
              return SizedBox(
                height: Get.height-170,
                child: ListView.builder(
                  itemCount: programController.days.length,
                  itemBuilder: (context, i){
                    return ClassItem(subjectClass: program.classes[i],);
                  },
                ),
              );
            }
        ),
      ),
    );
  }
}
