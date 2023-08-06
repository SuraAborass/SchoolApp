import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Constants/colors.dart';
import '../../DataAccessLayer/Models/grade.dart';
import '../../DataAccessLayer/Repositories/registration_repo.dart';
import '../../PresentationLayer/Widgets/Public/snackbars.dart';
import 'grades_controller.dart';

class RegistrationStudentController extends GetxController{
  final GradesController gradesController = Get.find();
  RegistrationStudentRepo repo = RegistrationStudentRepo();
  var sending = false.obs;
  //List<Grade> grades = [];
  TextEditingController firstnameController = TextEditingController();
  TextEditingController secondnameController = TextEditingController();
  TextEditingController mothernameController = TextEditingController();
  TextEditingController mothernationaliyController = TextEditingController();
  TextEditingController fathernationalityController = TextEditingController();
  TextEditingController motherjobController = TextEditingController();
  TextEditingController fatherjobController = TextEditingController();
  TextEditingController fathernameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  //String? genderType = 'ذكر' ;
  String? gradeId = "الصف الأول";
  String? payType = "دفع مباشر" ;
  //TextEditingController paytypeController = TextEditingController();
  TextEditingController motherphoneController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController gradeIdController = TextEditingController();



  // int convertGenderTypeToNumber(genderType) {
  //   if (genderType == 'ذكر') {
  //     return 0;
  //   } else {
  //     return 1;
  //   }
  // }

  int convertPayTypeToNumber(payType) {
    if (payType == 'تحويل بنكي') {
      return 0;
    } else {
      return 1;
    }
  }

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
    String gradeId = gradeIdController.text;
    if (firstname.isNotEmpty &&
        secondname.isNotEmpty &&
        payType!.isNotEmpty &&
        fathername.isNotEmpty &&
        mothername.isNotEmpty &&
        motherphone.isNotEmpty &&
        birthdate.isNotEmpty&&
        nationality.isNotEmpty&&
        gender.isNotEmpty&&
    gradeId.isNotEmpty) {
      var registerStudent = await repo.registrationStudent(
          firstname,
          secondname,
          fathername,
          mothername,
          motherphone,
          gender,
          convertPayTypeToNumber(payType),
          nationality,
          birthdate,
          int.parse(gradeId));
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

  void showBottomSheet() async{
    await Get.bottomSheet(Flexible(
      child: Directionality(textDirection: TextDirection.rtl,
          child: Container(
            padding: const EdgeInsets.all(20),
            //height: 250,
            decoration: const BoxDecoration(
                color: UIColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40), topRight: Radius.circular(40))),
            child: Center(
              // child: SizedBox(
              //   height: Get.height - 170,
              //   child: ListView.builder(
              //     itemCount: gradesController.grades.length,
              //     itemBuilder: (context, i) {
              //       return
              //     },
              //   ),
              // ),
            ),

          )),
    ));

  }
}