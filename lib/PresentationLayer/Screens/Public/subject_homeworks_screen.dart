import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/subjects_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/subject.dart';
import '../../Widgets/HomeWorks/subject_homeworks_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Shimmers/homework_shimmer.dart';

class SubjectHomeworksScreen extends StatelessWidget {
  SubjectHomeworksScreen({Key? key}) : super(key: key);
  final SubjectsController subjectsController = Get.find();
  final Subject subject = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text(" وظائف ${subject.name}",
                style: UITextStyle.titleBold.copyWith(fontSize: 20))),
        drawer: SchoolDrawer(),
        body: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: GetBuilder(
              init: subjectsController,
              builder: (context) {
                return subjectsController.loading.value == true
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
                  :RefreshIndicator(
                    onRefresh: () async {
                      subject.homeworks;
                    },
                    child: SizedBox(
                      height: Get.height - 170,
                      child: ListView.builder(
                        itemCount: subject.homeworks.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, i) {
                          return SubjectHomeworksItem(
                            homeWork: subject.homeworks[i],
                          );
                        },
                      ),
                    ));
              }),
        ),
      ),
    );
  }
}
