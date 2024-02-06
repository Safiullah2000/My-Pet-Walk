import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import '../constants/image_constants.dart';
import 'text_widget.dart';

class HomeAddressComp extends StatelessWidget {
  const HomeAddressComp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: 110,
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
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: "Address",
                fontSize: 11.sp,
                color: Colors.grey,
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(Images.HOME, color: tPrimaryColor, scale: 3),
                  SizedBox(width: 2.w),
                  Expanded(
                    flex: 5,
                    child: Column(
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
                              alignment: Alignment.centerLeft,
                              child: TextWidget(
                                fontSize: 9.sp,
                                text:
                                    'Flat no 103, Block - A, Alekhya homes,Madhapur, \nHyderabad. 500081',
                                color: Color(0xFF7C7C7C),
                              ),
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
      ),
    );
  }
}
