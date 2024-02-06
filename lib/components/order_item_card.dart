import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/constants.dart';
import '../constants/image_constants.dart';
import 'text_widget.dart';

class OderItemCard extends StatelessWidget {
  const OderItemCard({Key? key, this.index});

  final int? index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [tBoxShadow],
          borderRadius: BorderRadius.circular(20),
          color: tWhite,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 49,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: tLightGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Image.asset(
                      Images.BAGICON,
                      scale: 5,
                    ),
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
                              text: 'Order ID #0012345',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                              decoration: ShapeDecoration(
                                color: tSecondaryGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(38),
                                ),
                              ),
                              child: TextWidget(
                                text: 'Delivered',
                                color: tLightGreen,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w600,
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
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
        
            ],
          ),
        ),
      ),
    );
  }
}
