import 'package:get/get.dart';
import '../../DataAccessLayer/Models/installment.dart';
import '../../DataAccessLayer/Repositories/installments_repo.dart';



class InstallmentsController extends GetxController {
  InstallmentsRepo repo = InstallmentsRepo();
  List<Installment> installments = [];
  var loading = false.obs;
  var netValue = 0.0.obs;

  @override
  void onInit() async {
    await getInstallments();
    getNetValue();
    super.onInit();
  }

  void getNetValue() {
    installments.map((element) {
      if (element.type == "مبلغ") {
        netValue.value += element.amount;
      } else {
        netValue.value -= element.amount;
      }
      update();
    });
  }

  Future<void> getInstallments() async {
    loading.value = true;
    installments = await repo.getInstallments();
    update();
    loading.value = false;
  }
}
