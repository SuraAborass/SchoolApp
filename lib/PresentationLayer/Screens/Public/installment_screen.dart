import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/financialTransaction_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/installment.dart';
import '../../Widgets/Installments/installment_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';

class InstallmentScreen extends StatelessWidget {
  InstallmentScreen({Key? key}) : super(key: key);
  final InstallmentsController installmentsController =
      Get.put(InstallmentsController());
  //final Installment installment = Get.arguments[0];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(
          title: Text("الحساب المالي",
              style: UITextStyle.titleBold.copyWith(fontSize: 20))),
      drawer: SchoolDrawer(),
      body: Column(
        children: [
          Positioned(
            top: 0,
            child: GetBuilder(
                init: installmentsController,
                builder: (context) {
                  return SizedBox(
                    height: Get.height - 270,
                    child: ListView.builder(
                      itemCount: installmentsController.installments.length,
                      itemBuilder: (context, i) {
                        return InstallmentItem(
                          installment: installmentsController.installments[i],
                        );
                      },
                    ),
                  );
                }),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: Get.width,
                height: 84,
                color: UIColors.remainingAmount,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "المبلغ الباقي:",
                      style: UITextStyle.titleBold.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Obx(() => Text(
                          installmentsController.netValue.value.toString(),
                          style: UITextStyle.titleBold.copyWith(fontSize: 22),
                        ))
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
