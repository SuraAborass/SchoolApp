import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/get_routes.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/class.dart';
import 'package:get/get.dart';

class ClassItem extends StatelessWidget {
  const ClassItem({Key? key,required this.subjectClass}) : super(key: key);
final SubjectClass subjectClass;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 373,
        height: 72,
        decoration: BoxDecoration(
            color: UIColors.complaint,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(subjectClass.order, style: UITextStyle.titleBold),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(subjectClass.subject, style: UITextStyle.titleBold),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
