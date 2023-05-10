import 'package:flutter/material.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/HomeWorks/home_work_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';

class HomeWorkScreen extends StatelessWidget {
  const HomeWorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(title: Text("الوظائف",style: UITextStyle.titleBold.copyWith(fontSize: 25))),
      drawer: SchoolDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: GridView.builder(
            itemCount: 16,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,crossAxisSpacing: 20,mainAxisSpacing: 20),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, i){
              return  const HomeWorkItem();
            },
          ),
        ),
      ),
    );
  }
}
