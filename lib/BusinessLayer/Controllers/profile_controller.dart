import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../DataAccessLayer/Clients/box_client.dart';
import '../../DataAccessLayer/Clients/user_client.dart';
import '../../DataAccessLayer/Models/user.dart';
import '../../DataAccessLayer/Repositories/user_repo.dart';
import '../../PresentationLayer/Widgets/Public/snackbars.dart';
import '../../main.dart';
import 'dart:io';

class ProfileController extends GetxController{
  UserRepo userRepo = UserRepo();
  UserClient userClient = UserClient();
  BoxClient boxClient = BoxClient();
  TextEditingController updatePasswordController = TextEditingController();
  TextEditingController updateAddressController =
  TextEditingController(text: MyApp.appUser!.address);
  TextEditingController updatePhoneController =
  TextEditingController(text: MyApp.appUser!.phone);
  var loading = false.obs;
  var isProfilePicPathSet = false.obs;
  var profilePicPath = "".obs;
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();

  Future<void> updateInfo() async {
    loading.value = true;
    User? user;
    String password = updatePasswordController.value.text;
    String address = updateAddressController.value.text;
    String phoneNumber = updatePhoneController.value.text;
    if (phoneNumber.isNotEmpty) {
      user = await userRepo.updateInfo(
          MyApp.appUser!.id, password, address, phoneNumber);
      if (user != null) {
        MyApp.appUser = user;
        await boxClient.setAuthedUser(user);
        SnackBars.showSuccess("تم تعديل معلومات الملف الشخصي بنجاح");
        update();
      }
    } else {
      SnackBars.showWarning("راجع معلوماتك جيداً");
    }
    loading.value = false;
  }

  Future<void> takePhoto(ImageSource source) async {
    final pickedImage =
    await imagePicker.pickImage(source: source, imageQuality: 100);
    if (pickedImage != null) {
      pickedFile = File(pickedImage.path);
    }
    Get.back();
    loading.value = true;
    print("send to client");
    var response =
    await userClient.updateAvatar(MyApp.appUser!.id, pickedImage!.path);
    if (response != null) {
      User user = User.fromMap(response);
      boxClient.setAuthedUser(user);
      MyApp.appUser = user;
      SnackBars.showSuccess('تم تحديث صورة الملف الشخصي بنجاح');
    } else {
      SnackBars.showError('تعذر تغيير صورة الملف الشخصي');
    }
    print("end send to client");
    setProfileImagePath(pickedFile!.path);
    loading.value = false;
    update();
  }

  void setProfileImagePath(String path) {
    print("setting image");
    profilePicPath.value = path;
    isProfilePicPathSet.value = true;
    update();
  }
 }