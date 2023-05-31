import 'package:flutter/material.dart';

import '../../../Constants/ui_styles.dart';
import '../../../DataAccessLayer/Models/complaint.dart';
import '../Public/page_title.dart';

class ComplaintDetailsItem extends StatelessWidget {
  const ComplaintDetailsItem({Key? key, required this.complaint})
      : super(key: key);
  final Complaint complaint;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        pageTitle("الشكوى رقم #${complaint.id}"),
        TextFormField(
          keyboardType: TextInputType.name,
          decoration: profileInputStyle.copyWith(
            hintText: complaint.type,
          ),
        ),
        const SizedBox(height: 14),
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: profileInputStyle.copyWith(
            hintText: complaint.description,
          ),
        ),
        const SizedBox(height: 14),
        TextFormField(
          keyboardType: TextInputType.visiblePassword,
          decoration: profileInputStyle.copyWith(
            hintText:
                complaint.reply == "" ? 'لم يتم الرد بعد!' : complaint.reply,
          ),
        ),
      ],
    );
  }
}
