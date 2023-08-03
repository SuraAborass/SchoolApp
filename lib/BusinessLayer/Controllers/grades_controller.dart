import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../DataAccessLayer/Models/grade.dart';
import '../../DataAccessLayer/Repositories/grades_repo.dart';

class GradesController extends GetxController{
  GradesRepo repo = GradesRepo();
  List<Grade> grades = [];
  String? grade = "";
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
}