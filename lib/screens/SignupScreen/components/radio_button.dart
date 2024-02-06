import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';

class RadioButton extends StatefulWidget {
  final String text;

  const RadioButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  int selectedRadio = 0;

  void setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33.1.w,
      height: 7.h,
      decoration: ShapeDecoration(
        color: tSecondaryWhite,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: tlight),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: RadioListTile<int>(
        title: TextWidget(
          text: widget.text,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        value: 1,
        groupValue: selectedRadio,
        activeColor: tPrimaryColor,
        onChanged: (value) {
          setSelectedRadio(value!);
        },
      ),
    );
  }
}
