import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:school_app/Constants/text_styles.dart';
import '../../DataAccessLayer/Models/grade.dart';
import 'package:get/get.dart';

class GradesItem extends StatelessWidget {
  const GradesItem({Key? key,required this.grade}) : super(key: key);
final Grade grade;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("الصفوف",style: UITextStyle.titleBold.copyWith(color: UIColors.black),),
            const SizedBox(width: 10,),
            Text("الأقساط",style: UITextStyle.titleBold.copyWith(color: UIColors.black)),
          ],
        ),
        Container(
          color: UIColors.gray.withOpacity(.2),
          width: Get.width,
          child: Row(
            children: [
              Text("${grade.name}${grade.fee}",style: UITextStyle.titleBold.copyWith(color: UIColors.primary),),
            ],
          ),
        ),
      ],
    );
  }
}
