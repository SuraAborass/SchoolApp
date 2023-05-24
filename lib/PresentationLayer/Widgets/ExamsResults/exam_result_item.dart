import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/exam_result.dart';

class ExamResultItem extends StatelessWidget {
 const  ExamResultItem({Key? key, required this.examResult}) : super(key: key);
  final ExamResult examResult;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 330,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            child: Container(
              width: 330,
              height: 300,
              decoration: BoxDecoration(
                  color: UIColors.white,
                  border: Border.all(color: UIColors.primary, width: 1),
                  borderRadius: BorderRadius.circular(25)),
            ),
          ),
          Positioned(
            top: 0,
            right: 12,
            child: Container(
              width: 130,
              height: 28,
              decoration: BoxDecoration(
                  color: UIColors.white,
                  border: Border.all(color: UIColors.primary, width: 1),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                examResult.name,
                style: UITextStyle.bodyNormal
                    .copyWith(color: UIColors.primary, fontSize: 18),
              )),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListView.builder(
                padding: const EdgeInsets.all(8.0),
                  shrinkWrap: true,
                  itemCount: examResult.exams.length,
                  itemBuilder: (context,index){
                  return Container(
                   // padding: EdgeInsets.all(10),
                      margin: const EdgeInsets.only(top: 23),
                      height: 42,
                      child: subjects(context,index));
                  }
              )
            ],
          )
        ],
      ),
    );
  }

 Widget subjects (BuildContext context,index) {
   return Stack(
     children: [
       Container(
         width: 318,
         height: 42,
         decoration: BoxDecoration(
             color: UIColors.resultColor,
             borderRadius: BorderRadius.circular(16)),
       ),
       Positioned(
           right: 0,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
               examResult.exams[index].subject,
               style: UITextStyle.titleBold.copyWith(
                   color: UIColors.primary, fontSize: 20),
             ),
           )),
       Positioned(
         left: 0,
         child: Container(
           width: 134,
           height: 42,
           decoration: const BoxDecoration(
               color:
               //examResult.exams[index].score < examResult.exams[index].minimum_score? UIColors.error :
               UIColors.primary,
               borderRadius:  BorderRadius.only(
                   topLeft: Radius.circular(16),
                   bottomLeft: Radius.circular(16),
                   bottomRight: Radius.circular(16))),
           child:  Row(
             children: [
               const SizedBox(width: 40.0,),
               Text(
                 examResult.exams[index].maximum_score,
                 style: UITextStyle.titleBold,
               ),
               const Text(
                 "/",
                 style: UITextStyle.titleBold,
               ),
               Text(
                 examResult.exams[index].score,
                 style: UITextStyle.titleBold,
               ),
             ],
           ),
         ),
       ),
     ],
   );
 }
}
