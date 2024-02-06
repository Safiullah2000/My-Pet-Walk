import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../../responsive.dart';

class FloatingContainer extends StatelessWidget {
  const FloatingContainer({
    super.key,
    this.navigate,
    this.text,
  });
  final navigate;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.5.w), // Use sizer for padding
      width: isTab(context) ? 300 : 92.w,
      height: 10.0.h, // Use sizer to make the height responsive
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: '2 Items',
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
              Row(
                children: [
                  TextWidget(
                    text: '₹',
                    color: tPrimaryColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                  ),
                  TextWidget(
                    text: '196',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor:
                          tPrimaryColor, // Set the background color
                      // Set the text color
                      minimumSize:
                          Size(135, 50), // Set the minimum width and height
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {
                    Twl.navigateTo(context, navigate);
                  },
                  child: Row(
                    children: [
                      TextWidget(text: text, fontSize: 13.sp),
                      SizedBox(
                        width: 3.w,
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ))
              // GlobalButton(
              //   title: 'Place Order',
              //   buttonHeight: 6.h,
              //   buttonWidth: 40.w,
              //   onTap: (startLoading, stopLoading, btnState) {
              //     Twl.navigateTo(context, navigate);
              //   },
              // ),
              )
        ],
      ),
    );
  }
}
