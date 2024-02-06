import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import 'text_widget.dart';

class ProductContainer extends StatefulWidget {
  ProductContainer({
    Key? key,
    this.imagePath,
    this.imageScale,
    this.category,
  }) : super(key: key);
  final imagePath;
  final imageScale;
  final category;

  @override
  State<ProductContainer> createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      // width: 16.5.w,
      // height: 30.5.h,
      decoration: ShapeDecoration(
        color: tWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: [
          BoxShadow(
            color: tShadeRed,
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.imagePath,
            scale: widget.imageScale,
          ),
          // SizedBox(
          //   height: 1.h,
          // ),
          // TextWidget(
          //   text: 'Steam Iron',
          //   fontSize: 13.sp,
          //   fontWeight: FontWeight.w800,
          //   color: tShadeBlue,
          // ),
          Text(
            widget.category['name'],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w800,
                color: tShadeBlue),
          ),
          TextWidget(
            text: widget.category['description'],
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            // height: 1.50,
            color: tlightShadeBlue,
          ),
        ],
      ),
    );
  }
}
