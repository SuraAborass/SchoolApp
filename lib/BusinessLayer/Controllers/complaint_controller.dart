import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/text_styles.dart';
import '../../Constants/colors.dart';
import '../../Constants/ui_styles.dart';
import '../../DataAccessLayer/Models/complaint.dart';
import '../../DataAccessLayer/Repositories/complaint_repo.dart';
import '../../PresentationLayer/Widgets/Public/snackbars.dart';
import '../../main.dart';

class ComplaintController extends GetxController {
  ComplaintRepo complaintRepo = ComplaintRepo();
  List<Complaint> complaints = [];
  late Complaint complaint;
  var adding = false.obs;
  var loading = false.obs;
  TextEditingController typeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  void onInit() async {
    await getComplaints();
    super.onInit();
  }

  Future<void> getComplaints() async {
    loading.value = true;
    complaints = await complaintRepo.getComplaints();
    update();
    loading.value = false;
  }

  Future<void> addComplaint() async {
    adding.value = true;
      Complaint? complaint = await complaintRepo.addComplaint(
          1, typeController.value.text, descriptionController.value.text);
      if (complaint == null) {
        SnackBars.showError('املأ الحقول المطلوبة');
      }
     else {
      SnackBars.showSuccess(
          'تم إرسال الشكوى، سيتم مراجعتها في أقرب وقت ممكن ');
    }
    update();
    adding.value = false;
  }

  Future<void> addBusComplaint() async {
    adding.value = true;
    Complaint? complaint = await complaintRepo.addComplaint(
        1, "Bus", descriptionController.value.text);
    if (complaint == null) {
      SnackBars.showError('الشكوى فارغة!');
    } else {
      SnackBars.showSuccess('تم إرسال الشكوى، سيتم مراجعتها في أقرب وقت ممكن ');
    }
    update();
    adding.value = false;
  }

  void showAddComplaintDialog() {
    Get.bottomSheet(Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 300,
        decoration: const BoxDecoration(
            color: UIColors.complaint,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Center(
          child: ListView(
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "إرسال شكوى",
                  style: UITextStyle.titleBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: typeController,
                  decoration: profileInputStyle.copyWith(
                      hintText: 'اكتب نوع المشكلة',
                      hintStyle: UITextStyle.smallBodyNormal),
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: descriptionController,
                  decoration: profileInputStyle.copyWith(
                      hintText: 'ماهي المشكلة التي تواجهك، اكتبها هنا',
                      hintStyle: UITextStyle.smallBodyNormal),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    style: profileButtonStyle.copyWith(
                        backgroundColor: const MaterialStatePropertyAll<Color>(
                            UIColors.complaint)),
                    onPressed: () async {
                      await addComplaint();
                      Get.back();
                    },
                    child: const Text(
                      "إرسال",
                      style: UITextStyle.titleBold,
                    ))
              ],
            ),
          ]
          ),
        ),
      ),
    ));
  }

  void showBusDialog() {
    Get.bottomSheet(Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 250,
        decoration: const BoxDecoration(
            color: UIColors.primary,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Center(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "إرسال شكوى",
                  style: UITextStyle.titleBold,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: descriptionController,
                  decoration: profileInputStyle.copyWith(
                      hintText: 'ماهي المشكلة التي تواجهك، اكتبها هنا',
                      hintStyle: UITextStyle.smallBodyNormal),
                  maxLines: 2,
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    style: profileButtonStyle,
                    onPressed: () async {
                      await addBusComplaint();
                      Get.back();
                    },
                    child: const Text(
                      "إرسال",
                      style: UITextStyle.titleBold,
                    ))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
