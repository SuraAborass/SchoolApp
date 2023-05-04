import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/text_styles.dart';
import '../../../BussinessLayer/Controllers/login_controller.dart';
import '../../../Constants/colors.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
final LoginController loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: UIColors.primary,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 200,),
            TextFormField(
              style: UITextStyle.titleBold.copyWith(color: Colors.black),
              controller: loginController.phoneTextController,
              decoration: InputDecoration(
                filled: true,
                fillColor: UIColors.white,
                border: const OutlineInputBorder(),
                hintText: 'Enter your mobile number',
                hintStyle: UITextStyle.normalSmall,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      width: 2, color: UIColors.lightBlack),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: UIColors.gray)),
              ),
              maxLines: 1,
            ),
            const SizedBox(height: 20),
            Obx(() {
              return TextFormField(
                style: UITextStyle.titleBold.copyWith(color: Colors.black),
                controller: loginController.passwordTextController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: UIColors.white,
                  suffixIcon: IconButton(
                    icon: Icon(!loginController.passwordVisible.value
                        ? Icons.visibility_off
                        : Icons.visibility),
                    color: UIColors.iconColor,
                    onPressed: () {
                      loginController.togglePasswordVisible();
                    },
                  ),
                  border: const OutlineInputBorder(),
                  hintText: 'Enter your password',
                  hintStyle: UITextStyle.normalSmall,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: UIColors.lightBlack),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: UIColors.gray)),
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: !loginController.passwordVisible.value,
                maxLines: 1,
              );
            }),
            const SizedBox(
              height: 40,
            ),
            MaterialButton(
              height: 56,
              minWidth: Get.width,
              color: UIColors.studentTime,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(20.0))),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                     Text('Login', style: UITextStyle.titleBold)
                  ],
                ),
              onPressed: () async{
                await loginController.login();
              },
            ),
          ],
        ),
      ),
    );
  }
}
