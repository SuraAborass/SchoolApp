import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/get_routes.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import 'package:ionicons/ionicons.dart';

class SubjectsItem extends StatelessWidget {
  const SubjectsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Get.toNamed(AppRoutes.subjectsScreen),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: UIColors.subject,
            ),
            width: 163,
            height: 114,
          ),
          Positioned( top: 15,right:20,
            child: Text('المواد',
              style: UITextStyle.bodyNormal.copyWith(color: UIColors.white,fontSize: 25),),),
          Positioned(top: 50,right: 80,
              child: Container(height: 80, width: 110,
                decoration: const BoxDecoration(
                    color: UIColors.lightWhite,
                    borderRadius: BorderRadius. only(topRight: Radius.circular(25))
                ),
              )),
          const Positioned(top: 65,right:100,
              child: Icon(Icons.auto_stories,size: 37,color: UIColors.white,))
        ],
      ),
    );
  }
}
