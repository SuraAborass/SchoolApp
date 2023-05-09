import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:school_app/BussinessLayer/Controllers/user_controller.dart';
import '../../DataAccessLayer/Models/user.dart';
import '../../DataAccessLayer/Repositories/user_repo.dart';
import '../../PrsentationLayer/Widgets/Public/snackbars.dart';
import '../../main.dart';

class LoginController extends GetxController{
  var phoneTextController = TextEditingController();
  var passwordTextController = TextEditingController();
  var passwordVisible = false.obs;
  var sending = false.obs;
  final UserController userController = Get.find();
  var repo = UserRepo();

  @override
  void onInit() async {
    super.onInit();
  }

  Future<void> login() async {
    sending.value = true;
    User? user = await repo.login(
        phoneTextController.value.text, passwordTextController.value.text);
    if (user != null) {
      MyApp.appUser = user;
      await userController.saveAuthState(user);
      SnackBars.showSuccess("Welcome" + MyApp.appUser!.phone);
    } else {
      SnackBars.showError("Please check the entered data");
    }
    sending.value = false;
  }

  void togglePasswordVisible() {
    passwordVisible.value = !passwordVisible.value;
  }
}