import 'package:flutter/material.dart';
import 'package:school_app/Constants/colors.dart';
import 'package:school_app/Constants/get_routes.dart';
import 'package:school_app/Constants/text_styles.dart';
import 'package:get/get.dart';
import '../../../DataAccessLayer/Models/subject.dart';

class SubjectItem extends StatelessWidget {
  const SubjectItem({Key? key, required this.subject}) : super(key: key);
  final Subject subject;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Get.toNamed(AppRoutes.subjectHomeWorks, arguments: [subject]),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: UIColors.primary,
            ),
            width: 180,
            height: 120,
            child: Image.network(
              subject.image,
              fit: BoxFit.cover,
              opacity: const AlwaysStoppedAnimation(.10),
            ),
          ),
          Positioned(
            top: 70,
            right: 40,
            child: Text(
              subject.name,
              style: UITextStyle.bodyNormal.copyWith(
                color: UIColors.white,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
