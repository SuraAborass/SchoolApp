import 'package:flutter/material.dart';
import 'package:school_app/PresentationLayer/Widgets/Public/SizedBoxHeight.dart';
import 'package:school_app/PresentationLayer/Widgets/Public/SizedBoxWidth.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/ui_styles.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/Home/Alerts_item.dart';
import '../../Widgets/Home/Bus_item.dart';
import '../../Widgets/Home/Vacations_item.dart';
import '../../Widgets/Home/HomeWorks_item.dart';
import '../../Widgets/Home/Installments_item.dart';
import '../../Widgets/Home/ResultsItem_item.dart';
import '../../Widgets/Home/StudentTime_item.dart';
import '../../Widgets/Home/Subjects_item.dart';
import '../../Widgets/Public/AppBar.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.white,
      appBar: mainAppBar(context),
      drawer:  SchoolDrawer(),
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Expanded(
        flex: 1,
        child: Stack(
         children:[
           Container(
             height: 150,
             width: Get.width,
             decoration: const BoxDecoration(
               color: UIColors.primary,
               borderRadius: radiusbottomright,
             ),
             //child: Image.asset('assets/images/school-elements.png',fit: BoxFit.cover,opacity: const AlwaysStoppedAnimation(.20),),
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: const [
               Expanded(
                 flex: 2,
                  child: Padding(
                    padding:  EdgeInsets.only(top: 20.0,right: 20,),
                    child: CircleAvatar(
                     radius: 45,
                     backgroundImage: AssetImage("assets/images/studentschool.png",),
               ),
                  ),
                ),
                Expanded(
                 flex: 3,
                 child: Padding(
                   padding: EdgeInsets.only(top: 30.0,left: 8),
                   child: ListTile(
                     title: Text("اسم الطالب",style: UITextStyle.titleBold,textAlign: TextAlign.start,),
                     subtitle: Text("الصف الأول-الشعبة الرابعة",style:  UITextStyle.bodyNormal, textAlign: TextAlign.start
                   ),)
                 ),
               )
             ],
           ),
         ]
        ),
      ),

      Expanded(
        flex: 3,
        child: Column(
          children: [
            const SizedBoxHeight(),
            Row(
              children: [
                const SizedBoxWidth(),
                RichText(
                  text:  TextSpan(children: [
                    TextSpan(text: "مرحباً بك:",style: UITextStyle.bodyNormal.copyWith(fontSize: 20)),
                    TextSpan(text: " اسم الأم ",style: UITextStyle.bodyNormal.copyWith(color: UIColors.primary,fontSize: 20))
                  ]),),
              ],
            ),
            const SizedBoxHeight(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 14.0,left: 14.0),
                child: SizedBox(
                  child: GridView(
                    physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,crossAxisSpacing: 30,mainAxisSpacing: 0),
                   children: const [
                      SubjectsItem(),
                     HomeWorksItem(),
                     VacationsItem(),
                     ResultsItem(),
                     StudentTimeItem(),
                     BusItem(),
                     AlertsItem(),
                     InstallmentsItem()
                   ],
                ),
                ),
              ),
            )
          ],
        ),
      )
        ],
      ),
    );
  }
}
