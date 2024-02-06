
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../components/button.dart';
import '../../components/common_app_bar.dart';
import '../../constants/constants.dart';
import '../../globalFuctions/globalFunctions.dart';
import '../MyCartScreen/components/paymen-success.dart';
import 'components/payment_screen_body.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhite,
      appBar: CommonAppBar(
          title: "Payment",
        ),
      body: PaymentScreenBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GlobalButton(title: "Pay",buttonHeight: 50,buttonWidth: 80.w,
      onTap: (startLoading, stopLoading, btnState){
        Twl.navigateTo(context, PaymentDoneScreen());
      },),
    );
  }
}
    