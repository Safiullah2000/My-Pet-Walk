import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../providers/userProvider.dart';

class OtpText extends StatelessWidget {
  final TextEditingController code;

  OtpText(this.code);

  @override
  Widget build(BuildContext context) {
    final UserProvider _userProvider =
        Provider.of<UserProvider>(context, listen: false);

    return Container(
      height: 8.h,
      child: OTPTextField(
        length: 4,
        width: MediaQuery.of(context).size.width,
        fieldWidth: 14.w,
        // spaceBetween: 0.001.w,
        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldStyle: FieldStyle.box,
        onCompleted: (pin) {
          print("Completed: " + pin);
          _userProvider.setEnteredOtp(pin);
        },
      ),
    );
  }
}
