import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import '../constants/image_constants.dart';
import 'text_widget.dart';

class Bill extends StatelessWidget {
  const Bill({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 230,
          decoration: ShapeDecoration(
            color: tPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            shadows: [
              BoxShadow(
                color: SecondaryBlack,
                blurRadius: 6,
                offset: Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 175,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    text: 'You saved',
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  TextWidget(
                    text: '₹',
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                  TextWidget(
                    text: '20',
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  TextWidget(
                    text: ' on this order !',
                    fontSize: 12.sp,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            height: 185,
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 6,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Flex(
                direction: Axis.vertical,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        text: 'Item Total',
                        color: Color(0xFF1F1F1F),
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                      ),
                      Row(
                        children: [
                          TextWidget(
                            text: '₹ ',
                            color: tPrimaryColor,
                            fontSize: 12.sp,
                          ),
                          TextWidget(
                            text: '196',
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                        ],
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
                        text: 'Delivery Fee',
                        color: Color(0xFF7C7C7C),
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp,
                      ),
                      TextWidget(
                        text: 'Free',
                        color: Color(0xFF26C0B8),
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Image.asset(Images.LINE),
                  SizedBox(
                    height: 1.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        text: 'Plat form charges',
                        color: Color(0xFF1F1F1F),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                      Row(
                        children: [
                          TextWidget(
                            text: '₹ ',
                            color: tPrimaryColor,
                            fontSize: 12.sp,
                          ),
                          TextWidget(
                            text: '20.00',
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ],
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
                        text: 'Taxes and Charges',
                        color: Color(0xFF1F1F1F),
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                      Row(
                        children: [
                          TextWidget(
                            text: '₹ ',
                            color: tPrimaryColor,
                            fontSize: 12.sp,
                          ),
                          TextWidget(
                            text: '20.00',
                            color: Colors.black,
                            fontSize: 12.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Image.asset(Images.LINE),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        text: 'To pay',
                        color: Color(0xFF1F1F1F),
                        fontWeight: FontWeight.w700,
                        fontSize: 12.sp,
                      ),
                      Row(
                        children: [
                          TextWidget(
                            text: '₹ ',
                            color: tPrimaryColor,
                            fontSize: 12.sp,
                          ),
                          TextWidget(
                            text: '196',
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
