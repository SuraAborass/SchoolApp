import 'package:get/get.dart';
import '../../DataAccessLayer/Models/alert.dart';
import '../../DataAccessLayer/Repositories/alerts_repo.dart';

class AlertsController extends GetxController{
  AlertsRepo repo = AlertsRepo();
  List<Alert> alerts = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getAlerts();
    super.onInit();
  }

  Future<void> getAlerts() async {
    loading.value = true;
    alerts = await repo.getAlerts();
    update();
    loading.value = false;
  }
}