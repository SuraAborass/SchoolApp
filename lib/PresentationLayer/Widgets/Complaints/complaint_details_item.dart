import 'package:flutter/material.dart';

import '../../../DataAccessLayer/Models/complaint.dart';
import '../Public/page_title.dart';

class ComplaintDetailsItem extends StatelessWidget {
  const ComplaintDetailsItem({Key? key,required this.complaint}) : super(key: key);
final Complaint complaint;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
              children: [
                pageTitle("الشكوى رقم #${complaint.id}")
              ],
            )
    );
  }
}
