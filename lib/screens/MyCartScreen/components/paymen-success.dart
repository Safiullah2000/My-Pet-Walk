import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/button.dart';
import '../../../components/common_app_bar.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../BottomNavigationScreen/bottom_navigation.dart';

class PaymentDoneScreen extends StatelessWidget {
  const PaymentDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: '',
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                Images.PAYMENT,
                height: 30.h,
                width: 30.h,
              ),
              TextWidget(
                text: "₹196",
                fontSize: 25.sp,
                fontWeight: FontWeight.w500,
              ),
              TextWidget(
                  text: "Payment Done", fontSize: 24, color: tPrimaryColor),
              TextWidget(
                text: "Your payment is successfully completed",
                fontSize: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    text: 'Your "',
                    fontSize: 16,
                  ),
                  TextWidget(
                    text: "Order ID : 06521 ",
                    color: tPrimaryColor,
                    fontSize: 16,
                  ),
                  TextWidget(
                    text: '" has been placed',
                    fontSize: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              GlobalButton(
                title: 'Track Order',
                onTap: (startLoading, stopLoading, btnState) {
                  Twl.forceNavigateTo(context, BottomaNavi());
                },
                buttonHeight: 7.0.h,
                buttonWidth: 40.1.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
