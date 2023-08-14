import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/student_time_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Shimmers/homework_shimmer.dart';
import '../../Widgets/StudentTime/student_time_item.dart';

class StudentTimeScreen extends StatelessWidget {
  StudentTimeScreen({Key? key}) : super(key: key);
  final StudentTimeController studentTimeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text("دوام الطالب",
                style: UITextStyle.titleBold.copyWith(fontSize: 20))),
        drawer: SchoolDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GetBuilder(
              init: studentTimeController,
              builder: (context) {
                return studentTimeController.loading.value == true
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
                    : RefreshIndicator(
                    onRefresh: () async{
                      studentTimeController.getAbsences();
                    },
                    child: studentTimeController.absences.isEmpty
                    ?SizedBox(
                      height: Get.height - 200,
                      child: Center(
                        child: ListView(
                          shrinkWrap: true,
                          children: [
                            Text(
                              "لايوجد غيابات!",
                              style: UITextStyle.titleBold
                                  .copyWith(fontSize: 16,color: UIColors.lightBlack),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    )
                    :SizedBox(
                        height: Get.height - 170,
                        child: ListView.builder(
                          itemCount: studentTimeController.absences.length,
                          itemBuilder: (context, i) {
                            return StudentTimeItem(
                              studentTime: studentTimeController.absences[i],
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
