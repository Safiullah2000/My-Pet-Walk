import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart'; // Import the sizer package
import 'button.dart';
import 'text_widget.dart';

class CartContent extends StatelessWidget {
  const CartContent({
    Key? key, this.image, this.text,
  }) : super(key: key);
  final image;
  final text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h, vertical: 0.8.h),
      padding: EdgeInsets.symmetric(horizontal: 2.5.w), // Use sizer for padding
      width: double.infinity,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                image,
                height: 15.0.h, // Use sizer to make the height responsive
                width: 15.0.w, // Use sizer to make the width responsive
              ),
              SizedBox(
                width: 2.5.w, // Use sizer for spacing
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: text,
                    fontSize: 16.sp,
                  ),
                  Row(
                    children: [
                      TextWidget(
                        text: '₹ 99',
                        fontSize: 15.sp,
                        color: Color(0xFF26C0B8),
                      ),
                      SizedBox(
                        width: 0.5.w, // Use sizer for spacing
                      ),
                      Text(
                        "₹ 100",
                        style: TextStyle(
                          color: Color(0xFFAAAAAA),
                          fontSize: 10
                              .sp, // Use sizer to make the font size responsive
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: GlobalButton(
              title: 'Add',
              buttonHeight: 5.h,
              buttonWidth: 20.w,
              onTap: (startLoading, stopLoading, btnState) {},
            ),
          )
        ],
      ),
    );
  }
}
