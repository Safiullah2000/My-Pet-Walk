
import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart'; // Import the sizer package


class OrderItem extends StatefulWidget {
   final  image;
  final  title;
   OrderItem({
    Key? key, required this.image, required this.title,
  }) : super(key: key);

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  String selectedSize = 'S';
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 1.h, vertical: 1.h),
        //  padding: EdgeInsets.symmetric(horizontal: 2.5.w), // Use sizer for padding
        width: double.infinity,
        // Use sizer to make the height responsive
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                  widget.image,
                    scale: 4,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextWidget(text: widget.title, fontSize: 13.sp),
                      SizedBox(
                        height: 1.h,
                      ),
                      TextWidget(text: "By Bibas", fontSize: 13.sp),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              TextWidget(text: "Size", fontSize: 12.sp),
                              SizedBox(
                                width: 2.w,
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: selectedSize,
                                  icon: Icon(Icons
                                      .arrow_drop_down), // Arrow dropdown icon
                                  iconSize: 24,
                                  elevation: 16,
                                  style:
                                      TextStyle(color: tBlack, fontSize: 12.sp),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedSize = newValue!;
                                    });
                                  },
                                  items: <String>['XS', 'S', 'M', 'L', 'XL']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Row(
                            children: [
                              TextWidget(text: "Qty  1", fontSize: 12.sp),
                              SizedBox(
                                width: 2.w,
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(text: 'Rs 1200', fontSize: 13.sp),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text(
                            'Rs 2000',
                            style: TextStyle(
                                fontSize: 10.sp,
                                decoration: TextDecoration.lineThrough,
                                color: tGray),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          TextWidget(
                            text: '(40% OFF)',
                            fontSize: 12.sp,
                            color: tOrange,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: "Max discount of Rs 800",
                            fontSize: 12.sp,
                            color: tBlue,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Icon(
                            Icons.info_outline_rounded,
                            size: 17,
                            color: tBlue,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              DottedDashedLine(
                height: 1.h,
                width: 45.h,
                axis: Axis.horizontal,
                dashColor: Color.fromARGB(255, 205, 203, 203),
                dashWidth: 6,
                strokeWidth: 0.3,
              ),
              SizedBox(height: 1.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){},
                    child: TextWidget(
                        text: 'REMOVE', fontSize: 13.sp, color: tBlueShade,),
                  ),
                  InkWell(
                    onTap: (){},
                    child: TextWidget(
                      text: 'ADD TO WISHLIST', fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      color: tBlueShade,
                    ),
                  )
                ],
              ),
              SizedBox(height: 1.h,),
            ],
          ),
        )
       
        );
  }
}
