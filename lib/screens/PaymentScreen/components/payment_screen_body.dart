import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/radiobutton_row.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';

class PaymentScreenBody extends StatefulWidget {
  @override
  State<PaymentScreenBody> createState() => _PaymentScreenBodyState();
}

class _PaymentScreenBodyState extends State<PaymentScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Code for Basic screen body with four blocks
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // First Block
                 SizedBox(height: 2.h),
                TextWidget(
                    text: "Payment method",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700),

                SizedBox(height: 1.h),
                TextWidget(
                  text:
                      "💳 Link your bank accounts, credit cards, and even reward cards in one place.",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: tGray,
                ),
                SizedBox(height: 3.h),
                TextWidget(
                    text: "Pay on Delivery",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(height: 2.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 4,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: RadioButtonRow(
                      image: Images.COD,
                      text: "Cash on Delivery",
                    )),
                SizedBox(height: 1.h),
                TextWidget(
                    text: "UPI Payments",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600),
                SizedBox(height: 2.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RadioButtonRow(
                        image: Images.GPAY,
                        text: "Google Pay",
                      ),
                      SizedBox(height: 0.5.h,),
                      RadioButtonRow(
                        image: Images.PHNPAY,
                        text: "Phone pe",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h,),
                TextWidget(
                    text: "Note : Do not go back while payment is processing",
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: tGray,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
