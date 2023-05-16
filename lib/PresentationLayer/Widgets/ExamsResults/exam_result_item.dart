import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';

class ExamResultItem extends StatelessWidget {
  const ExamResultItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          width: 356,
          height: 300,
          decoration:  BoxDecoration(
          color: UIColors.white,
          border: Border.all(color: UIColors.primary,width: 1),
      borderRadius: BorderRadius.circular(25)
      ),
        child: Positioned(
          child: Container(
        width: 127,
      height: 28,
      decoration:  BoxDecoration(
      color: UIColors.white,
      border: Border.all(color: UIColors.primary,width: 1),
      borderRadius: BorderRadius.circular(25)
      ),)
        ),
      ),
    );
  }
}
