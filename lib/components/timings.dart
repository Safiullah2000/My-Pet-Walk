// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'date_container.dart';

class Timings extends StatelessWidget {
  const Timings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // Image.asset(
            //   Images.LINE,
            //   scale: 3.6,
            //   color: Colors.grey,
            // ),
          ],
        ),
        SizedBox(
          height: 1.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Container(
            //   width: 40.w,
            //   height: 4.h,
            //   padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            //   decoration: ShapeDecoration(
            //     color: Color(0xFFFF7A30),
            //     shape: RoundedRectangleBorder(
            //       side: BorderSide(width: 0.75, color: Color(0xFFFF7A30)),
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //   ),
            //   child: TextWidget(
            //     text: '08:00AM - 09:00AM',
            //     color: Colors.white,
            //     fontSize: 12,
            //   ),
            // ),
            DateContainer(
              text: '08:00AM - 09:00AM',
            ),
            DateContainer(
              text: '12:00PM- 01:00PM',
            ),
          ],
        ),
        SizedBox(height: 1.h),
      ],
    );
  }
}
