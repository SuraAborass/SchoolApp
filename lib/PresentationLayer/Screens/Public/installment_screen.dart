import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/installments_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Installments/installment_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Shimmers/homework_shimmer.dart';

class InstallmentScreen extends StatelessWidget {
  InstallmentScreen({Key? key}) : super(key: key);
  final InstallmentsController installmentsController =
      Get.put(InstallmentsController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const SchoolBottomNavigationBar(),
        appBar: schoolAppBar(
            title: Text("الحساب المالي",
                style: UITextStyle.titleBold.copyWith(fontSize: 20))),
        drawer: SchoolDrawer(),
        body: GetBuilder(
          init: installmentsController,
          builder: (context) {
            return Column(
              children: [
                Positioned(
                  top: 0,
                  child: installmentsController.installments.isEmpty
                 ? SizedBox(
                    height: Get.height - 250,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        return const HomeworkShimmer();
                      },
                    ),
                  )
                  :RefreshIndicator(
                    onRefresh: () async{
                      installmentsController.getInstallments();
                    },
                    child: SizedBox(
                      height: Get.height - 270,
                      child: ListView.builder(
                        itemCount: installmentsController.installments.length,
                        itemBuilder: (context, i) {
                          return InstallmentItem(
                            installment: installmentsController.installments[i],
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: Get.width,
                    //height: 84,
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
                      GetBuilder(
                        init: installmentsController,
                        builder: (context) {
                          return Text(
                                  installmentsController.netValue.value.toString(),
                                  style: UITextStyle.titleBold.copyWith(fontSize: 22),
                                );
                        }
                      )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,)
              ],
            );
          }
        ),
      ),
    );
  }
}
