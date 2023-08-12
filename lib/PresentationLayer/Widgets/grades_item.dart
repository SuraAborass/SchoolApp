import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:school_app/Constants/text_styles.dart';
import '../../DataAccessLayer/Models/grade.dart';


class GradesItem extends StatelessWidget {
  const GradesItem({Key? key,required this.grade}) : super(key: key);
final Grade grade;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("${grade.name}${grade.fee}",style: UITextStyle.titleBold.copyWith(color: UIColors.gray),)
      ],

    );
  }
}
