import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/program_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Program/day_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Shimmers/homework_shimmer.dart';

class ProgramScreen extends StatelessWidget {
  ProgramScreen({Key? key}) : super(key: key);
  final ProgramController programController = Get.put(ProgramController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text("برنامج الدوام",
                style: UITextStyle.titleBold.copyWith(fontSize: 25))),
        drawer: SchoolDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GetBuilder(
              init: programController,
              builder: (context) {
                return programController.loading.value == true
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
                    : SizedBox(
                        height: Get.height - 170,
                        child: ListView.builder(
                          itemCount: programController.days.length,
                          itemBuilder: (context, i) {
                            return DayItem(
                              program: programController.days[i],
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
