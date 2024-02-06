
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';

class ORDEROTPCARD extends StatelessWidget {
  const ORDEROTPCARD({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TextWidget(
                text: "OTP :",
                fontSize: 14.sp,
                color: tBlack,
              ),
              TextWidget(
                text: "1234",
                fontSize: 22.sp,
                color: tPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 36,
              decoration: ShapeDecoration(
                color: tWhite,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: tPrimaryColor),
                  borderRadius: BorderRadius.circular(10),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x66FF7A30),
                    blurRadius: 4,
                    offset: Offset(1, 2),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                child: Row(
                  children: [
                    Image.asset(
                      Images.EDIT,
                      scale: 5,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    TextWidget(
                      text: "Edit Order",
                      fontSize: 14.sp,
                      color: tPrimaryColor,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
