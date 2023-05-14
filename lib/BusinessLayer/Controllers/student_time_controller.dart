import 'package:get/get.dart';
import '../../DataAccessLayer/Models/student_time.dart';
import '../../DataAccessLayer/Repositories/student_time_repo.dart';

class StudentTimeController extends GetxController{
  StudentTimeRepo repo = StudentTimeRepo();
  List<StudentTime> absences = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getAbsences();
    super.onInit();
  }

  Future<void> getAbsences() async {
    loading.value = true;
    absences = await repo.getStudentTime();
    update();
    loading.value = false;
  }
}