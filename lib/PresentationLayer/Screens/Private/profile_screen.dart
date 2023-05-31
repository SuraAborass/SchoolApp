import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../Constants/ui_styles.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: UIColors.primary,
      appBar: schoolAppBar(),
      drawer: SchoolDrawer(),
      body: SafeArea(
        child: SizedBox(
          width: Get.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
            child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10, horizontal: 12),
                      child: Text(
                        'الملف الشخصي',
                        style: UITextStyle.titleBold,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        width: Get.width,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: CircleAvatar(
                                minRadius: 52,
                                backgroundColor: UIColors.circleAvatarBorder,
                                child: CircleAvatar(
                                  minRadius: 50,
                                  backgroundColor:
                                  UIColors.circleAvatarBackground,
                                  child: ClipOval(
                                    child: Image.asset(
                                      'assets/images/user-default.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              flex: 1,
                              child: Text("اسم الأم",
                                style: UITextStyle.titleBold.copyWith(
                                  color: UIColors.normalText,fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Form(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 10,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    TextFormField(
                                      keyboardType: TextInputType.name,
                                      decoration: profileInputStyle.copyWith(
                                        hintText: 'أدخل اسمك هنا',
                                      ),
                                    ),
                                    const SizedBox(height: 14),
                                    TextFormField(
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: profileInputStyle.copyWith(
                                        hintText: 'أدخل بريدك الإلكتروني',
                                      ),
                                    ),
                                    const SizedBox(height: 14),
                                    TextFormField(
                                      keyboardType:
                                      TextInputType.visiblePassword,
                                      decoration: profileInputStyle.copyWith(
                                        hintText: 'اتركه فارغاً لتجنب المشاكل',
                                      ),
                                    ),
                                    const SizedBox(height: 14),
                                    TextFormField(
                                      keyboardType: TextInputType.streetAddress,
                                      decoration: profileInputStyle.copyWith(
                                        hintText: 'أدخل عنوانك هنا',
                                      ),
                                    ),
                                    const SizedBox(height: 14),
                                    TextFormField(
                                      keyboardType: TextInputType.phone,
                                      decoration: profileInputStyle.copyWith(
                                        hintText: 'أدخل رقم هاتفك',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 18),
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                width: Get.width,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: profileButtonStyle,
                                  child: Text(
                                    'تحديث معلوماتك',
                                    style: UITextStyle.titleBold.copyWith(fontSize: 15),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
        ),
    );
  }
}
