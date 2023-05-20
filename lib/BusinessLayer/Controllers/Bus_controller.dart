import 'package:get/get.dart';

import '../../DataAccessLayer/Models/bus.dart';
import '../../DataAccessLayer/Repositories/bus_repo.dart';

class BusController extends GetxController{
  BusRepo repo = BusRepo();
  List<BusInfo> busInfo = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getBusInfo();
    super.onInit();
  }

  Future<void> getBusInfo() async {
    loading.value = true;
    busInfo = await repo.getBusInfo();
    update();
    loading.value = false;
  }
}