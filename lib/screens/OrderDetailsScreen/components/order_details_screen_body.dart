import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/items_card.dart';
import '../../../components/order_card.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import 'delivery_stepper.dart';

class OrderDetailsScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ItemsCard(),
            SizedBox(height: 1.h),
            OrderCard(),
            SizedBox(height: 1.h),
            Container(
              // elevation: 3,
              decoration: ShapeDecoration(
                color: tWhite,
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
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: 'Location',
                      fontSize: 12.sp,
                      color: tGray,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(Images.HOME, scale: 3),
                        SizedBox(width: 2.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(
                                  fontSize: 12.sp,
                                  text: 'Home',
                                  color: Color(0xFF1F1F1F),
                                  fontWeight: FontWeight.w600,
                                ),
                                Align(
                                  //  alignment: Alignment.centerLeft,
                                  child: TextWidget(
                                    fontSize: 10.sp,
                                    text:
                                        'Sri Sai Nagar, Ayyappa Society, Madhapur,\nTel(500081)',

                                    color: Color(0xFF7C7C7C),
                                    // height: ,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
                decoration: ShapeDecoration(
                  color: tWhite,
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
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: "Delivered at 10, Sept 10:00AM",
                        fontSize: 11.sp,
                        color: tGray,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      NumberStepper(),
                    ],
                  ),
                )))
          ],
        ),
      ),
    );
  }
}
