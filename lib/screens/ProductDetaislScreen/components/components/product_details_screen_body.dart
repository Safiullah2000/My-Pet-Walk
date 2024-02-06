import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../components/button.dart';
import '../../../../components/text_widget.dart';
import '../../../../constants/constants.dart';
import 'image_scroll.dart';

class ProductDetailsScreenBody extends StatefulWidget {
  const ProductDetailsScreenBody({super.key,});

  @override
  State<ProductDetailsScreenBody> createState() =>
      _ProductDetailsScreenBodyState();
}

class _ProductDetailsScreenBodyState extends State<ProductDetailsScreenBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              ProductImageScroll(),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: "Louis Philippe",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
                TextWidget(
                  text: "Men Purple Printed Polo Collar T-shirt",
                  fontSize: 12.sp,
                  color: tGray,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: "Rs.1209",
                      fontSize: 17.sp,
                    ),
                    GlobalButton(
                      title: 'Add',
                      buttonHeight: 5.h,
                      buttonWidth: 20.w,
                      onTap: (startLoading, stopLoading, btnState) {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Divider(),
                SizedBox(
                  height: 1.h,
                ),
                TextWidget(
                  text: "PRODUCT DETAILS ",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextWidget(
                  text:
                      "Purple T-shirt for men\nGeometric printed\nRegular length\nPolo collar\nShort, regular sleeves\nKnitted cotton fabric\nButton closure",
                  fontSize: 10.sp,
                  color: tGray,
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextWidget(
                  text: "Size & Fit",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextWidget(
                  text:
                      "Regular Fit\nThe model (height 6') is wearing a size M",
                  fontSize: 10.sp,
                  color: tGray,
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextWidget(
                  text: "Material & Care",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextWidget(
                  text: "Cotton\nMachine-wash",
                  fontSize: 10.sp,
                  color: tGray,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
