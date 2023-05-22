// import 'package:flutter/material.dart';
//
// import '../../../Constants/colors.dart';
// import '../../../Constants/text_styles.dart';
// import '../../../DataAccessLayer/Models/exam_result.dart';
//
// class ExamItem extends StatelessWidget {
//   const ExamItem({Key? key,required this.examName}) : super(key: key);
//   final ExamResult examName;
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: 318,
//           height: 42,
//           decoration: BoxDecoration(
//               color: UIColors.resultColor,
//               borderRadius: BorderRadius.circular(16)),
//         ),
//         Positioned(
//             right: 0,
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 examName.exams.subject,
//                 style: UITextStyle.titleBold.copyWith(
//                     color: UIColors.primary, fontSize: 20),
//               ),
//             )),
//         Positioned(
//           left: 0,
//           child: Container(
//             width: 134,
//             height: 42,
//             decoration: const BoxDecoration(
//                 color: UIColors.primary,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(16),
//                     bottomLeft: Radius.circular(16),
//                     bottomRight: Radius.circular(16))),
//             child:  Center(
//               child: Row(
//                 children: [
//                   Text(
//                     examName.exams.maximum_score,
//                     style: UITextStyle.titleBold,
//                   ),
//                   const Text(
//                     "/",
//                     style: UITextStyle.titleBold,
//                   ),
//                   Text(
//                     examName.exams.minimum_score,
//                     style: UITextStyle.titleBold,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
