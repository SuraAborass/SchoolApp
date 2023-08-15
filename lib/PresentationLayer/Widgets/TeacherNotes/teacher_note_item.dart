import 'package:flutter/material.dart';

import '../../../Constants/Helpers/alert_state.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/TeacherNote.dart';


class TeacherNoteItem extends StatelessWidget {
  const TeacherNoteItem({Key? key,required this.teacherNote}) : super(key: key);
final TeacherNote teacherNote;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 373,
        height: 84,
        decoration:  BoxDecoration(
            color: AlertState.getAlertState(teacherNote.type),
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                width: 66,
                height: 64,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child:  Icon(AlertStateIcon.getAlertState(teacherNote.type),
                  color: UIColors.white,size: 40,),
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
                        children:  [
                          Text(
                            "${teacherNote.teacher}(${teacherNote.subject})",
                            style: UITextStyle.titleBold,
                          ),
                          Text(teacherNote.text,
                              style: UITextStyle.titleBold),
                        ])
                )),
          ],
        ),
      ),
    );
  }
}
