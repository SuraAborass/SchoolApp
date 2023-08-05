import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../DataAccessLayer/Repositories/registration_repo.dart';
import '../../PresentationLayer/Widgets/Public/snackbars.dart';

class RegistrationStudentController extends GetxController{
  RegistrationStudentRepo repo = RegistrationStudentRepo();
  var sending = false.obs;
  TextEditingController firstnameController = TextEditingController();
  TextEditingController secondnameController = TextEditingController();
  TextEditingController mothernameController = TextEditingController();
  TextEditingController fathernameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  //String? genderType = 'ذكر' ;
  String? payType = "دفع مباشر" ;
  //TextEditingController paytypeController = TextEditingController();
  TextEditingController motherphoneController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController gradeController = TextEditingController();



  // int convertGenderTypeToNumber(genderType) {
  //   if (genderType == 'ذكر') {
  //     return 0;
  //   } else {
  //     return 1;
  //   }
  // }

  // int convertPayTypeToNumber(payType) {
  //   if (payType == 'تحويل بنكي') {
  //     return 0;
  //   } else {
  //     return 1;
  //   }
  // }

  Future<void> registerStudent() async {
    sending.value = true;
    String firstname = firstnameController.text;
    String secondname = secondnameController.text;
    String fathername = fathernameController.text;
    String mothername = mothernameController.text;
    String motherphone = motherphoneController.text;
    String birthdate = birthdateController.text;
    String nationality = nationalityController.text;
    String gender =  genderController.text;
    String grade = gradeController.text;
    if (firstname.isNotEmpty &&
        secondname.isNotEmpty &&
        payType!.isNotEmpty &&
        fathername.isNotEmpty &&
        mothername.isNotEmpty &&
        motherphone.isNotEmpty &&
        birthdate.isNotEmpty&&
        nationality.isNotEmpty&&
        gender.isNotEmpty&&
    grade.isNotEmpty) {
      var registerStudent = await repo.registrationStudent(
          firstname,
          secondname,
          fathername,
          mothername,
          motherphone,
          gender,
          payType,
          nationality,
          birthdate,
          grade);
      if (registerStudent != null) {
        SnackBars.showSuccess('تم إرسال الطلب');
      } else {
        SnackBars.showError('فشل إرسال الطلب');
      }
    } else {
      SnackBars.showWarning('يرجى تعبئة الحقول المطلوبة');
    }
    sending.value = false;
  }
}