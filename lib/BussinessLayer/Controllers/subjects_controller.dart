import 'package:get/get.dart';

import '../../DataAcessLayer/Models/subject.dart';
import '../../DataAcessLayer/Models/user.dart';
import '../../DataAcessLayer/Repositories/subject_repo.dart';

class SubjectsController extends GetxController{
  SubjectsRepo repo = SubjectsRepo();
  List<Subject> subjects = [];
  User? user;
  var loading = false.obs;

  @override
  void onInit() async {
    await getSubjectsWithHomework();
    super.onInit();
  }

  Future<void> getSubjectsWithHomework() async {
    loading.value = true;
    subjects = await repo.getSubjectsWithHomework();
    update();
    loading.value = false;
  }


}