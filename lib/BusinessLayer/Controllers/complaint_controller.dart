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
  ComplaintRepo wareRepo = ComplaintRepo();
  List<Complaint> complaints = [];
  var adding = false.obs;
  TextEditingController typeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  Future<void> addComplaint(index) async {
    adding.value = true;
    Complaint? complaint = await wareRepo.addComplaint(
        MyApp.appUser!.id,
        typeController.value.text,
        descriptionController.value.text);
    adding.value = false;
    update();
    if (complaint == null) {
      SnackBars.showError('حدث خطأ لم يتم إرسال الشكوى');
    } else {
      SnackBars.showSuccess('تم إرسال الشكوى، سيتم مراجعتها في أقرب وقت ممكن ');
    }
  }

  void showEditDialog(index) {
   // descriptionController.value = const TextEditingValue(text: "الوصف");
    Get.bottomSheet(
        Expanded(
          child: Container(
      padding: const EdgeInsets.all(20),
      height: 280,
      decoration: const BoxDecoration(
            color: UIColors.primary,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Center(
          child: Column(
            children: [
              const Text(
                "إرسال شكوى",
                style: UITextStyle.titleBold,
              ),
              const Spacer(),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: typeController,
                decoration: profileInputStyle.copyWith(
                  hintText: 'نوع الشكوى',
              ),),
                const Spacer(),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  controller: descriptionController,
                  decoration: profileInputStyle.copyWith(
                    hintText: 'الوصف',
                  ),),
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      minimumSize: Size(Get.width, 50),
                      backgroundColor: UIColors.resultColor,
                      textStyle: UITextStyle.titleBold),
                  onPressed: () async {
                    await addComplaint(index);
                    Get.back();
                  },
                  child:  Text("إرسال",style: UITextStyle.titleBold.copyWith(color: UIColors.lightBlack),))
            ],
          ),
      ),
    ),
        ));
  }
}
