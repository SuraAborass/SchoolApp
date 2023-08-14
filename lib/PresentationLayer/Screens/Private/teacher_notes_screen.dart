import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/teacher_note_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Shimmers/homework_shimmer.dart';
import '../../Widgets/TeacherNotes/teacher_note_item.dart';


class TeacherNotesScreen extends StatelessWidget {
  TeacherNotesScreen({Key? key}) : super(key: key);
  final TeacherNoteController teacherNoteController =
      Get.put(TeacherNoteController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text("ملاحظات المعلم",
                style: UITextStyle.titleBold.copyWith(fontSize: 20))),
        drawer: SchoolDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GetBuilder(
              init: teacherNoteController,
              builder: (context) {
                return teacherNoteController.loading.value == true
                    ?SizedBox(
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
                    teacherNoteController.getTeacherNotes();
                  },
                  child: teacherNoteController.teacherNotes.isEmpty
                      ? SizedBox(
                          height: Get.height - 200,
                          child: Center(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                Text(
                                  "لايوجد ملاحظات!",
                                  style: UITextStyle.titleBold
                                      .copyWith(fontSize: 16,color: UIColors.lightBlack),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        )
                      : SizedBox(
                          height: Get.height - 170,
                          child: ListView.builder(
                            itemCount: teacherNoteController.teacherNotes.length,
                            itemBuilder: (context, i) {
                              return TeacherNoteItem(
                                teacherNote: teacherNoteController.teacherNotes[i],
                              );
                            },
                          ),
                        ),
                );
              }),
        ),
      ),
    );
  }
}
