import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/grades_controller.dart';
import '../../../BusinessLayer/Controllers/registration_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../Constants/ui_styles.dart';
import '../../../DataAccessLayer/Models/grade.dart';
import '../../Widgets/Public/dropdown_form_field.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Public/text_form_field.dart';
import '../../Widgets/grades_item.dart';
import '../../Widgets/payment_item.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);
  final GradesController gradesController = Get.find();
  final RegistrationStudentController registrationStudentController =
      Get.put(RegistrationStudentController());

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
            child: GetBuilder(
                init: registrationStudentController,
                builder: (_) {
                  return Column(
                    children: [
                      SchoolTextFormField(
                        controller:
                            registrationStudentController.firstnameController,
                        hintText: 'اسم الطالب',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller:
                            registrationStudentController.secondnameController,
                        hintText: 'اسم العائلة',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller:
                            registrationStudentController.fathernameController,
                        hintText: 'اسم الأب',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller:
                            registrationStudentController.mothernameController,
                        hintText: 'اسم الأم',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller: registrationStudentController
                            .fathernationalityController,
                        hintText: 'جنسية الأب',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller: registrationStudentController
                            .mothernationaliyController,
                        hintText: 'جنسية الأم',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller:
                            registrationStudentController.nationalityController,
                        hintText: 'جنسية الطالب',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller:
                            registrationStudentController.fatherjobController,
                        hintText: 'عمل الأب (اختياري)',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller:
                            registrationStudentController.motherjobController,
                        hintText: 'عمل الأم (اختياري)',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) => bottomSheet(context));
                        },
                        child: ElevatedButton(
                          onPressed: () async {
                            await showModalBottomSheet(
                                context: context,
                                builder: (context) => bottomSheet(context));
                          },
                          style: gradeButtonStyle,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                registrationStudentController.gradeText ??
                                    'اختر الصف',
                                style: UITextStyle.normalSmall,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller:
                            registrationStudentController.birthdateController,
                        hintText: 'تاريخ الولادة',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Obx(() {
                          return Row(
                            children: [
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  registrationStudentController
                                      .selectPaymentMethod('دفع مباشر');
                                },
                                child: paymentMethodItem(
                                  Icon(Icons.money),
                                  'دفع مباشر',
                                  'دفع مباشر',
                                  registrationStudentController
                                      .selectedMethod.value,
                                ),
                              )),
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  registrationStudentController
                                      .selectPaymentMethod('تحويل بنكي');
                                },
                                child: paymentMethodItem(
                                  Icon(Icons.payment),
                                  'تحويل بنكي',
                                  'تحويل بنكي',
                                  registrationStudentController
                                      .selectedMethod.value,
                                ),
                              ))
                            ],
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SchoolTextFormField(
                        controller:
                            registrationStudentController.motherphoneController,
                        hintText: 'رقم هاتف للتواصل',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Obx(() {
                        return MaterialButton(
                          height: 56,
                          minWidth: Get.width,
                          color: UIColors.primary,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                  );
                }),
          ),
        ),
      ),
    );
  }

  Widget bottomSheet(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 250,
      decoration: const BoxDecoration(
          color: UIColors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Center(
        child: GetBuilder(
            init: gradesController,
            builder: (context) {
              return Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "الصفوف",
                          style: UITextStyle.titleBold
                              .copyWith(color: UIColors.black),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Text("الأقساط",
                            style: UITextStyle.titleBold
                                .copyWith(color: UIColors.black)),
                      ],
                    ),
                    Expanded(
                      child: SizedBox(
                        //height: Get.height - 170,
                        child: ListView.builder(
                          itemCount: gradesController.grades.length,
                          itemBuilder: (context, i) {
                            return InkWell(
                              onTap: () {
                                registrationStudentController.setGradId(
                                    gradesController.grades[i].id,
                                    gradesController.grades[i].name +
                                        "--" +
                                        gradesController.grades[i].fee
                                            .toString());
                                Get.back();
                              },
                              child: GradesItem(
                                grade: gradesController.grades[i],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
