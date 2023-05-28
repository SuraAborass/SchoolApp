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
  var adding = false.obs;
  TextEditingController typeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Future<void> addComplaint(index) async {
    adding.value = true;
    Complaint? complaint = await complaintRepo.addComplaint(MyApp.appUser!.id,
        typeController.value.text, descriptionController.value.text);
    update();
    if (complaint == null) {
      SnackBars.showError('حدث خطأ لم يتم إرسال الشكوى');
    } else {
      SnackBars.showSuccess('تم إرسال الشكوى، سيتم مراجعتها في أقرب وقت ممكن ');
    }
    adding.value = false;
  }

  void showEditDialog(index) {
    Get.bottomSheet(Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 270,
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
                const SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: typeController,
                  decoration: profileInputStyle.copyWith(
                      hintText: 'نوع الشكوى',
                      hintStyle: UITextStyle.smallBodyNormal),
                ),
                const SizedBox(height: 10,),
                TextFormField(
                  keyboardType: TextInputType.text,
                  controller: descriptionController,
                  decoration: profileInputStyle.copyWith(
                      hintText: 'الوصف', hintStyle: UITextStyle.smallBodyNormal),
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                    style: profileButtonStyle,
                    onPressed: () async {
                      await addComplaint(index);
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
