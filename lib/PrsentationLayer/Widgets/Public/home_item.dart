import 'package:flutter/material.dart';
import '../../../Constants/ui_colors.dart';
import '../../../Constants/ui_text_styles.dart';
import 'package:get/get.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({Key? key}) : super(key: key);
// final String route;
// final String name;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: UIColors.primary,
            ),
            width: 180,
            height: 120,
          ),
          Positioned( top: 15,right:20,
            child: Text('المواد',
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
