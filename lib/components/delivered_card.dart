// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/constants.dart';
import '../constants/image_constants.dart';
import 'text_widget.dart';

class DeliveredWashCard extends StatelessWidget {
  const DeliveredWashCard({super.key, this.index});
  final index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 15.w,
                      height: 7.h,
                      child: CircularProgressIndicator(
                        color: tGray,
                        value: 1,
                        backgroundColor: tLightWhite,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(tPrimaryColor),
                      ),
                    ),
                    Positioned(
                      child: Image.asset(
                        Images.APPLE,
                        scale: 5,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 2.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: 'Ironing',
                            fontSize: 15.sp,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 7),
                            decoration: ShapeDecoration(
                              color: Color.fromARGB(255, 220, 238, 220),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(38),
                              ),
                            ),
                            child: TextWidget(
                              text: 'Delivered',
                              color: Colors.green,
                              fontSize: 11.sp,
                            ),
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
                            text: '5 Items',
                            fontSize: 11.sp,
                            color: tGray,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: TextWidget(
                              text: 'Mon, 07 Aug 2023',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          // ORDEROTPCARD(),
        ],
      ),
    );
  }
}
