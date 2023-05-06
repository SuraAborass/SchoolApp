import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../Constants/get_routes.dart';
import '../../DataAcessLayer/Clients/box_client.dart';
import '../../DataAcessLayer/Models/user.dart';
import '../../main.dart';

class UserController extends GetxController{
  final BoxClient boxClient = BoxClient();
  final box = GetStorage();
  User? user;
  bool authed = false;
  @override
  void onInit() async {
    super.onInit();
    authed = await boxClient.getAuthState();
    if (authed) {
      user = await boxClient.getAuthedUser();
      update();
      print(user!.toMap());
    }
    update();
  }

  Future<void> saveAuthState(User user) async {
    await boxClient.setAuthedUser(user);
    user = user;

    update();
    Get.offAndToNamed(AppRoutes.homeScreen);
  }

  Future<void> logout() async {
    await boxClient.removeUserData();
    MyApp.appUser = null;
    Get.toNamed(AppRoutes.loginScreen);
  }

}