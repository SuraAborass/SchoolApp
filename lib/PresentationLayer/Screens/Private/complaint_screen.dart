import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/complaint_controller.dart';
import '../../../DataAccessLayer/Models/complaint.dart';
import '../../Widgets/Complaints/complaint_details_item.dart';
import '../../Widgets/Public/bottom_navigation_bar.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/page_title.dart';
import '../../Widgets/Public/school_appbar.dart';

class ComplaintScreen extends StatelessWidget {
  ComplaintScreen({
    Key? key,
  }) : super(key: key);
  final ComplaintController complaintController = Get.find();
  final Complaint complaint = Get.arguments[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const SchoolBottomNavigationBar(),
      appBar: schoolAppBar(),
      drawer: SchoolDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GetBuilder(
            init: complaintController,
            builder: (context) {
              return ComplaintDetailsItem(
                complaint: complaint,
              );
            }),
      ),
    );
  }
}
