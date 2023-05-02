import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:school_app/Constants/get_routes.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';

class HomeWorksItem extends StatelessWidget {
  const HomeWorksItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>Get.toNamed(AppRoutes.homeWorksScreen),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: UIColors.homework,
            ),
            width: 163,
            height: 114,
          ),
          Positioned( top: 15,right:20,
            child: Text('الوظائف',
              style: UITextStyle.bodyNormal.copyWith(color: UIColors.white,fontSize: 25),),),
          Positioned(top: 60,right: 90,
              child: Container(height: 60, width: 100,
                decoration: const BoxDecoration(
                    color: UIColors.lightWhite,
                    borderRadius: BorderRadius. only(topRight: Radius.circular(20))
                ),
              )),
          const Positioned(top: 65,right:100,
              child: Icon(Icons.calendar_month,size: 45,color: UIColors.iconColor,))
        ],
      ),
    );
  }
}
