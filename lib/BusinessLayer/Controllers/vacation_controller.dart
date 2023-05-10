import 'package:get/get.dart';
import '../../DataAccessLayer/Models/vacation.dart';
import '../../DataAccessLayer/Repositories/vacation_repo.dart';


class VacationController extends GetxController{
  List<Vacation> vacations = [];
  VacationsRepo repo = VacationsRepo();
  var loading = false.obs;

  @override
  void onInit() async {
    await getVacations();
    super.onInit();
  }

  Future<void> getVacations() async {
    loading.value = true;
    vacations = await repo.getVacations();
    update();
    loading.value = false;
  }
}