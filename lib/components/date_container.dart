import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import 'text_widget.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({super.key, this.text});
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      // height: 4.h,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.75, color: tPrimaryColor),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Center(
        child: TextWidget(
          text: text,
          color: tPrimaryColor,
          fontSize: 12,
        ),
      ),
    );
  }
}
