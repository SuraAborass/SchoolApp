import 'package:get/get.dart';
import '../../DataAccessLayer/Models/exam_result.dart';
import '../../DataAccessLayer/Repositories/exam_result_repo.dart';

class ExamResultsController extends GetxController{
  ExamResultsRepo repo = ExamResultsRepo();
  List<ExamResult> examResults = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getExamResults();
    super.onInit();
  }

  Future<void> getExamResults() async {
    loading.value = true;
    examResults = await repo.getExamResults();
    update();
    loading.value = false;
  }
}