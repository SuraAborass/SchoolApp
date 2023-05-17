import 'package:get/get.dart';
import '../../DataAccessLayer/Models/homework.dart';
import '../../DataAccessLayer/Repositories/homeworks_repo.dart';

class HomeworksController extends GetxController{
  HomeworksRepo repo = HomeworksRepo();
  List<HomeWork> homeworks = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getHomeworks();
    super.onInit();
  }

  Future<void> getHomeworks() async {
    loading.value = true;
    homeworks = await repo.getHomeworks();
    update();
    loading.value = false;
  }

}