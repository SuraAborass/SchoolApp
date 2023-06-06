import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/class.dart';


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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(subjectClass.order, style: UITextStyle.titleBold),
              const SizedBox(width: 100,),
              Text(subjectClass.subject, style: UITextStyle.titleBold),
            ],
          ),
        ),
      ),
    );
  }
}
