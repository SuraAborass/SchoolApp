import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/grades_controller.dart';
import '../../../BusinessLayer/Controllers/registration_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../Constants/ui_styles.dart';
import '../../Widgets/Public/dropdown_form_field.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Public/text_form_field.dart';

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
                SchoolTextFormField(controller: registrationStudentController.firstnameController,
                hintText: 'اسم الطالب',),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.secondnameController,
                  hintText: 'اسم العائلة',),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.fathernameController,
                  hintText: 'اسم الأب',),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.mothernameController,
                  hintText: 'اسم الأم',),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.fathernationalityController,
                  hintText: 'جنسية الأب',),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.mothernationaliyController,
                  hintText: 'جنسية الأم',),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.nationalityController,
                  hintText: 'جنسية الطالب',),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.fatherjobController,
                  hintText: 'عمل الأب (اختياري)',),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.motherjobController,
                  hintText: 'عمل الأم (اختياري)',),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    registrationStudentController.showBottomSheet();
                  },
                  child: SchoolTextFormField(controller: registrationStudentController.gradeIdController,
                    hintText: 'الصف',),
                ),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.birthdateController,
                  hintText: 'تاريخ الولادة',),
                const SizedBox(height: 10,),
                SchoolTextFormField(controller: registrationStudentController.genderController,
                  hintText: 'الجنس',),
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
                SchoolTextFormField(controller: registrationStudentController.gradeIdController,
                  hintText: 'رقم هاتف للتواصل',),
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
