import 'package:flutter/material.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Subjects/Subject_item.dart';

class SubjectsScreen extends StatelessWidget {
  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: schoolAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          child: GridView.builder(
            itemCount: 16,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,crossAxisSpacing: 20),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, i){
              return  const SubjectItem();
            },
          ),
        ),
      ),
    );
  }
}
