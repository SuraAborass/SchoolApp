import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:school_app/Constants/get_routes.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/program.dart';
import 'package:get/get.dart';

class DayItem extends StatelessWidget {
  const DayItem({Key? key, required this.day}) : super(key: key);
  final Program day;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Get.toNamed(AppRoutes.classes,arguments: [day]);
        },
        child: Container(
          width: 373,
          height: 72,
          decoration: BoxDecoration(
              color: UIColors.alertInfo,
              borderRadius: BorderRadius.circular(16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(day.day, style: UITextStyle.titleBold),
            ],
          ),
        ),
      ),
    );
  }
}
