import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../components/bill.dart';

import '../../../components/cart_content.dart';
import '../../../components/delivery_component.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';

class MyCartScreenBody extends StatefulWidget {
  @override
  State<MyCartScreenBody> createState() => _MyCartScreenBodyState();
}

class _MyCartScreenBodyState extends State<MyCartScreenBody> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Code for Basic screen body with four blocks
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              CartContent(image: Images.SNACKS1,text: "Earth Bites "),
              
              CartContent(image: Images.SNACKS2,text: "Kurgo Snacks"),
              SizedBox(
                height: 2.h,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: TextWidget(
                    text: "Bill Details",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700),
              ),

              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.all(11.0),
                child: Bill(),
              ),

              SizedBox(
                height: 2.h,
              ),
              DeliveryComponent(
                  image: Images.DELIVERY, text: "Delivery date", day: "Friday"),

              SizedBox(
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  // width: 343,
                  // height: 87,
                  decoration: ShapeDecoration(
                    color: tWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 4,
                        offset: Offset(0, 1),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Row(
                          children: [
                            TextWidget(
                              text: 'If any instruction ',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400,
                              color: tRedGrey,
                            ),
                            TextWidget(
                              text: '(optional)',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: tRedGrey,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        // TextFieldContainer(hintText: "write here"),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Write here',
                            hintStyle: TextStyle(color: tRedGrey),
                            filled: true,
                            // Set the background color to grey
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide.none, // Remove the border
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // HomeAddressComp(),
              // SizedBox(
              //   height: 2.h,
              // ),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 3.w,
                    ),
                    Checkbox(
                      value: isChecked,
                      activeColor: tPrimaryColor,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      },
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'By accepting our ',
                            style: TextStyle(fontSize: 9.sp),
                          ),
                          TextSpan(
                            text: 'terms and conditions',
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: tPrimaryColor), // Customize the color
                          ),
                          TextSpan(
                            text:
                                ' we are \nplacing this order. please check order details once.',
                            style: TextStyle(fontSize: 9.sp),
                          ),
                        ],
                      ),
                      maxLines: 2, // Limit the text to two lines
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
