import 'package:flutter/material.dart';
import '../../../Constants/Helpers/absence_state.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/student_time.dart';


class StudentTimeItem extends StatelessWidget {
  const StudentTimeItem({Key? key,required this.studentTime}) : super(key: key);
final StudentTime studentTime;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 373,
        height: 72,
        decoration:  BoxDecoration(
            color: studentTime.status=="1" ?  UIColors.justified :UIColors.unjustified ,
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
                  // image: DecorationImage(
                  //     image: AssetImage(
                  //         'assets/images/school icon.png'),
                  //     fit: BoxFit.cover),
                ),
                child: Icon(studentTime.status=="1" ? Icons.done
                                                    : Icons.clear,
                color: UIColors.white,size: 50,),
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
                            studentTime.date,
                            style: UITextStyle.titleBold,
                          ),
                          Text(AbsenceState.getAbsenceState(studentTime.status),
                              style: UITextStyle.titleBold),
                        ])
                )),
          ],
        ),
      ),
    );
  }
}
