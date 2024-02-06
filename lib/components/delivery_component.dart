import 'package:Inhouse_Pets/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import '../constants/image_constants.dart';

class DeliveryComponent extends StatelessWidget {
  const DeliveryComponent({
    super.key,
    this.text,
    this.day,
    this.image,
  });
  final text;
  final day;
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 1.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: text,
              fontSize: 11.sp,
              color: Colors.grey,
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  image,
                  color: tPrimaryColor,
                  scale: 4,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: "Aug 11th",
                            fontSize: 13.sp,
                          ),
                          Image.asset(
                            Images.EDITICON,
                            color: tPrimaryColor,
                            scale: 5,
                          )
                        ],
                      ),
                      // SizedBox(
                      //   height: 0.5.h,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: "08:00PM - 12:00AM",
                            fontSize: 11.sp,
                            color: tPrimaryColor,
                          ),
                          TextWidget(
                            text: day,
                            fontSize: 12.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
