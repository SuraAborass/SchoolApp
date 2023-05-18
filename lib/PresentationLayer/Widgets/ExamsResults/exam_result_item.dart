import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/exam_result.dart';

class ExamResultItem extends StatelessWidget {
  const ExamResultItem({Key? key, required this.examResult}) : super(key: key);
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
                examResult.exam,
                style: UITextStyle.bodyNormal
                    .copyWith(color: UIColors.primary, fontSize: 18),
              )),
            ),
          ),
          Positioned(
              top: 30,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
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
                            examResult.subject,
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
                            color: UIColors.primary,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16))),
                        child: const Center(
                          child: Text(
                            "1200/1000",
                            style: UITextStyle.titleBold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
