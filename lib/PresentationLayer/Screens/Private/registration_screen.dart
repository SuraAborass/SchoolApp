import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/grades_controller.dart';
import '../../../BusinessLayer/Controllers/registration_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../Constants/ui_styles.dart';
import '../../Widgets/Public/dropdown_form_field.dart';
import '../../Widgets/Public/school_appbar.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);
  final GradesController gradesController = Get.find();
  final RegistrationStudentController registrationStudentController = Get.put(RegistrationStudentController());

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: schoolAppBar(
            title: Text("تسجيل طالب في المدرسة",
                style: UITextStyle.titleBold.copyWith(fontSize: 18))),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  controller: registrationStudentController.firstnameController,
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.text,
                    decoration:
                        textFieldStyle.copyWith(hintText: "اسم الطالب")),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: registrationStudentController.secondnameController,
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.text,
                    decoration:
                        textFieldStyle.copyWith(hintText: "اسم العائلة")),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: registrationStudentController.fathernameController,
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.text,
                    decoration:
                        textFieldStyle.copyWith(hintText: "اسم الأب")),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: registrationStudentController.mothernameController,
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.text,
                    decoration:
                        textFieldStyle.copyWith(hintText: "اسم الأم")),
                const SizedBox(height: 10,),
                TextFormField(
                    controller: registrationStudentController.gradeController,
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.text,
                    decoration:
                    textFieldStyle.copyWith(hintText: "الصف")),
                // SchoolDropDownFormField(
                //   value: registrationStudentController.gradeController.value,
                //   items: const [
                //     'الصف الأول',
                //     'الصف الثاني',
                //     'الصف الثالث'
                //   ],
                //   onChanged: (value) {
                //     gradesController.grade;
                //   },
                // ),
                const SizedBox(height: 10,),
                SchoolDropDownFormField(
                  value: registrationStudentController.payType,
                  items: const [
                    'دفع مباشر',
                    'تحويل بنكي',
                  ],
                  onChanged: (value) {
                    registrationStudentController.payType = value;
                  },
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: registrationStudentController.birthdateController,
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.text,
                    decoration: textFieldStyle.copyWith(
                        hintText: "تاريخ الولادة")),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: registrationStudentController.motherphoneController,
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.text,
                    decoration: textFieldStyle.copyWith(
                        hintText: "رقم هاتف للتواصل")),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: registrationStudentController.genderController,
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.text,
                    decoration:
                        textFieldStyle.copyWith(hintText: "الجنس")),
                const SizedBox(height: 10,),
                TextFormField(
                  controller: registrationStudentController.nationalityController,
                    style: UITextStyle.titleBold,
                    keyboardType: TextInputType.text,
                    decoration:
                        textFieldStyle.copyWith(hintText: "الجنسية")),
                const SizedBox(height: 10,),
                Obx(() {
                  return MaterialButton(
                  height: 56,
                  minWidth: Get.width,
                  color: UIColors.primary,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:  [
                      if (registrationStudentController.sending.value)
                        const CircularProgressIndicator(
                          color: UIColors.white,
                        ),
                      const Text('حفظ', style: UITextStyle.titleBold)
                    ],
                  ),
                  onPressed: () {
                    registrationStudentController.registerStudent();
                  },

                );
  }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
