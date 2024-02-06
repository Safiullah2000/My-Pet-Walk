import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import '../constants/image_constants.dart';
import 'text_widget.dart';
import 'timings.dart';

class DateCard extends StatefulWidget {
  const DateCard({super.key, this.TextWidget});
  final TextWidget;

  @override
  State<DateCard> createState() => _DateCardState();
}

class _DateCardState extends State<DateCard> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        trailing:
            // Transform.rotate(
            //   angle: isExpanded ? 0 : 3.14,
            //   child: GestureDetector(
            //     onTap: () {
            //       setState(() {
            //         isExpanded = !isExpanded;
            //       });
            //     },
            // child:
            Image.asset(
          Images.ARROW,
          color: tPrimaryColor,
          scale: 4,
        ),
        title: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Aug 11th',
                    color: Color(0xFF1A1A1A),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(width: 3.w),
                  TextWidget(
                    text: 'Tomorrow',
                    color: Color(0xFF8390A1),
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Tuesday',
                    color: Color(0xFF26C0B8),
                    fontWeight: FontWeight.w400,
                    fontSize: 10.sp,
                  ),
                ],
              ),
            ],
          ),
        ),
        children: [
          if (isExpanded)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
              child: Timings(),
            ),
        ],
      ),
    );
  }
}
