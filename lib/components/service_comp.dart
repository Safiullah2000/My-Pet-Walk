import 'package:Inhouse_Pets/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import 'button.dart';

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({
    super.key, this.image, this.text, this.name,
  });
  final image;
  final text;
  final name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
      width: 48.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                image,
                scale: 4,
                width: 40.w,
                
              )
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          TextWidget(
            text: text,
            fontSize: 8.sp,
            fontWeight: FontWeight.w400,
            color: tGray,
          ),
          SizedBox(
            height: 1.h,
          ),
          SizedBox(
            width: 144,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style: GoogleFonts.lexend(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(children: [
            TextWidget(text: "500gm", fontSize: 9.sp,color: tBlue),
            Icon(Icons.keyboard_arrow_down_outlined,color: tBlue,)
          ],),
          SizedBox(
            height: 1.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "₹120",
                    style: TextStyle(
                      fontSize: 7.sp,
                      color: tGray,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  TextWidget(
                    text: "₹98",
                    fontSize: 10.5.sp,
                    color: tPrimaryColor,
                  ),
                  
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              GlobalButton(
                title: 'Add',
                buttonHeight: 4.5.h,
                buttonWidth: 18.w,
                onTap: (startLoading, stopLoading, btnState) {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
