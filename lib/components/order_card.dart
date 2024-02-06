import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

import '../constants/constants.dart';
import 'text_widget.dart';

class OrderCard extends StatelessWidget {
  OrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: tWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: SecondaryBlack,
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: "Bill Details",
              fontSize: 14.sp,
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 1.h,
            ),
            DottedDashedLine(
                height: 2.h,
                width: 45.h,
                axis: Axis.horizontal,
                dashColor: Color.fromARGB(255, 205, 203, 203),
                dashWidth: 5,
                strokeWidth: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(text: "Item Total", fontSize: 14.sp),
                TextWidget(
                  text: "₹ 210",
                  fontSize: 14.sp,
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Delivery Charges",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                TextWidget(
                  text: "₹ 20",
                  fontSize: 14.sp,
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: "Taxes",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                TextWidget(
                  text: "₹ 210",
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  // color: tPrimaryColor,
                ),
              ],
            ),
            SizedBox(
              height: 1.5.h,
            ),
            DottedDashedLine(
                height: 2.h,
                width: 45.h,
                axis: Axis.horizontal,
                dashColor: Color.fromARGB(255, 205, 203, 203),
                dashWidth: 5,
                strokeWidth: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextWidget(
                      text: "Total",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    TextWidget(
                      text: " (16 items)",
                      fontSize: 12.sp,
                      color: tGray,
                    ),
                  ],
                ),
                TextWidget(
                  text: "₹ 210",
                  fontSize: 14.sp,
                  color: tOrange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
