import 'package:Inhouse_Pets/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

import '../constants/constants.dart';
import '../constants/image_constants.dart';

// ignore: must_be_immutable
class ItemsCard extends StatelessWidget {
  ItemsCard({super.key});
  List itemDetails = [
    {
      'item': 'Earth Bites',
      'image': Images.SNACKS1,
      'itemCount': '10',
      'amount': '99'
    },
    {'item': 'Kurgo Snacks', 'image': Images.SNACKS2, 'itemCount': '10', 'amount': '99'},
  ];
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
            TextWidget(text: "Items", fontSize: 16.sp),
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
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: itemDetails.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              itemDetails[index]['image'],
                              scale: 8,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            TextWidget(
                                text: itemDetails[index]['item'],
                                fontSize: 14.sp),
                            SizedBox(
                              width: 1.5.w,
                            ),
                            
                          ],
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: "₹",
                              fontSize: 16.sp,
                              color: tPrimaryColor,
                            ),
                            SizedBox(
                              width: 1.5.w,
                            ),
                            TextWidget(
                              text: itemDetails[index]['amount'],
                              fontSize: 16.sp,
                              color: tPrimaryColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.5.h,
                    )
                  ],
                );
              }),
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
                Row(
                  children: [
                    TextWidget(text: "Sub Total", fontSize: 14.sp),
                    SizedBox(
                      width: 1.w,
                    ),
                    TextWidget(
                      text: "(16 Items)",
                      fontSize: 14.sp,
                      color: tGray,
                    ),
                  ],
                ),
                TextWidget(text: "₹ 198", fontSize: 14.sp,color: tPrimaryColor,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
