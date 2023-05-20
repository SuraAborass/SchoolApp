import 'package:get/get.dart';
import '../Controllers/Bus_controller.dart';
import '../Controllers/alerts_controller.dart';
import '../Controllers/exam_result_controller.dart';
import '../Controllers/homeworks_controller.dart';
import '../Controllers/student_time_controller.dart';
import '../Controllers/subjects_controller.dart';
import '../Controllers/vacation_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<SubjectsController>(SubjectsController());
    Get.put<VacationController>(VacationController());
    Get.put<StudentTimeController>(StudentTimeController());
    Get.put<AlertsController>(AlertsController());
    Get.put<HomeworksController>(HomeworksController());
    Get.put<ExamResultsController>(ExamResultsController());
    Get.put<BusController>(BusController());
  }
}