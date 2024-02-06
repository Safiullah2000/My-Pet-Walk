import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../components/button.dart';
import '../../../components/leading_icon_component.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../../providers/userProvider.dart';
import '../../SignupScreen/components/registration.dart';
import '../login_screen.dart';
import 'login_screen_logo.dart';
import 'otp_text.dart';

class OTPScreen extends StatefulWidget {
  OTPScreen({
    super.key,
  });

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final UserProvider _userProvider =
        Provider.of<UserProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        backgroundColor: tWhite,
        elevation: 0,
        leading: LeadingIcon(),
      ),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 16.h,
            // ),
            LogoScreen(),
            // SizedBox(
            //   height: 15.h,
            // ),
            Form(
              key: formKey,
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'OTP Verification',
                        fontSize: 26.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(height: 1.0.h),
                      TextWidget(
                        text:
                            'Enter the verification code we just sent on your Mobile number ' +
                                _userProvider.contactNo.toString(),
                        color: tGray,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      SizedBox(height: 32),
                      OtpText(TextEditingController()),
                      SizedBox(height: 3.8.h),
                      GlobalButton(
                          buttonHeight: 50,
                          buttonWidth: 90.1.w,
                          onTap: (startLoading, stopLoading, btnState) async {
//                             if (formKey.currentState!.validate()) {
//                               try {
//                                 startLoading();
//                                 Map<String, String> param = {
//                                   'otp_code': _userProvider
//                                       .enteredOtp, // Use the entered OTP from UserProvider
//                                   'contact_no': _userProvider.contactNo
//                                       .toString(), // You can access the contact number from the parent widget
//                                   'session_code':
//                                       _userProvider.sessionCode ?? '',
//                                   'device_token': '1',
//                                   'device_type': '1',
//                                 };
//                                 print(param);
//                                 var res =
//                                     await UserAPI().verifyOtp(context, param);
//                                 if (res['status'] == "OK") {
//                                   // Obtain shared preferences.
// final SharedPreferences prefs = await SharedPreferences.getInstance();

//                                   //cHECK Api and Save response
//                                   var result = await UserAPI()
//                                       .checkApi(context, res['auth_code']);
//                                   if (result['status'] == "OK") {
//                                     await prefs.setString('authCode', res['auth_code']);
//                                     _userProvider.setAuthCode(res['auth_code']);
//                                     _userProvider.clearOtpContactSession();
//                                     _userProvider.setCheckApiResponse(result);
//                                     stopLoading();
                            Twl.navigateTo(context, Registration());
//                                   } else {
//                                     Twl.createAlert(
//                                         context, "Sorry", res['error']);
//                                   }
//                                 }
//                               } catch (error) {
//                                 // Handle the error here
//                                 print("An error occurred: $error");
//                                 stopLoading();
//                                 Twl.createAlert(context, "Error",
//                                     "An error occurred. Please try again.");
//                               }
//                             }
                          },
                          title: 'Verify'),
                      SizedBox(
                        height: 4.1.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Twl.navigateTo(context, LoginScreen());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextWidget(
                              fontSize: 11.sp,
                              text: "Didn't receive OTP?",
                            ),
                            TextWidget(
                              fontSize: 11.sp,
                              text: ' Resend',
                              color: tPrimaryColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
