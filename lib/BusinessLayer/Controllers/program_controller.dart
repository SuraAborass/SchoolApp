import 'package:get/get.dart';
import '../../DataAccessLayer/Models/program.dart';
import '../../DataAccessLayer/Repositories/program_repo.dart';

class ProgramController extends GetxController{
  ProgramRepo repo = ProgramRepo();
  List<Program> days = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getDays();
    super.onInit();
  }

  Future<void> getDays() async {
    loading.value = true;
    days = await repo.getDays();
    update();
    loading.value = false;
  }
}