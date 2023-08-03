import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../Constants/ui_styles.dart';

class SchoolDropDownFormField extends StatelessWidget {
  const SchoolDropDownFormField({Key? key,required this.items,
    this.value,
    required this.onChanged,}) : super(key: key);

  final List<String> items;
  final String? value;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: value ?? items[0],
      isDense: true,
      isExpanded: true,
      decoration: textFieldStyle,
      style: UITextStyle.bodyNormal,
      focusColor: UIColors.normalText,
      dropdownColor: UIColors.white,
      icon: const Icon(
        Icons.keyboard_arrow_down_sharp,
        color: UIColors.gray,
        size: 25,
      ),
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem(
          value: value,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(value,style: UITextStyle.bodyNormal.copyWith(fontSize: 18)),
          ),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
