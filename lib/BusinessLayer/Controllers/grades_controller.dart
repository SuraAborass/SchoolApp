import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Constants/colors.dart';
import '../../DataAccessLayer/Models/grade.dart';
import '../../DataAccessLayer/Repositories/grades_repo.dart';
import '../../PresentationLayer/Widgets/grades_item.dart';

class GradesController extends GetxController{
  GradesRepo repo = GradesRepo();
  List<Grade> grades = [];
  //String? grade = "";
  var loading = false.obs;

  @override
  void onInit() async {
    await getGrades();
    super.onInit();
  }

  Future<void> getGrades() async {
    loading.value = true;
    grades = await repo.getGrades();
    update();
    loading.value = false;
  }


  // void showBottomSheet() async{
  //   await Get.bottomSheet(Container(
  //     padding: const EdgeInsets.all(20),
  //     //height: 250,
  //     decoration: const BoxDecoration(
  //         color: UIColors.white,
  //         borderRadius: BorderRadius.only(
  //             topLeft: Radius.circular(40), topRight: Radius.circular(40))),
  //     child: Center(
  //       child: GetBuilder(
  //          // init: gradesController,
  //           builder: (context) {
  //             return SizedBox(
  //               height: Get.height - 170,
  //               child: ListView.builder(
  //                 itemCount: grades.length,
  //                 itemBuilder: (context, i) {
  //                   return GradesItem(
  //                     grade: grades[i],
  //                   );
  //                 },
  //               ),
  //             );
  //           }
  //       ),
  //     ),
  //
  //   ));
  //
  // }
}