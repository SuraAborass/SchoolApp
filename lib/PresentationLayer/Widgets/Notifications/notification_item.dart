import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/notification.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key,required this.userNotification}) : super(key: key);
final UserNotification userNotification;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: Get.width,
        height: 79,
        decoration: const BoxDecoration(
          color: UIColors.primary,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: UIColors.white,
                  borderRadius:  BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Center(child: Text("${userNotification.id}#",style: UITextStyle.titleBold.copyWith(color: UIColors.iconColor,fontSize: 25),)),
              ),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          userNotification.title,
                          style: UITextStyle.titleBold
                        ),
                        Text(userNotification.description,
                            style: UITextStyle.titleBold),
                        //Text(userNotification.time, style:  UITextStyle.titleBold),
                      ]),
                )),
          ],
        ));
  }
}
