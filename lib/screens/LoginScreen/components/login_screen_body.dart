// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:Inhouse_Pets/screens/HomeScreen/home_screen.dart';
import 'package:Inhouse_Pets/screens/SignupScreen/components/registration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

// import '../../../components/button.dart';
import '../../../components/button.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../../providers/userProvider.dart';
import 'login_screen_logo.dart';
import 'login_screen_mobile_number.dart';
import 'package:http/http.dart' as http;

class LoginScreenBody extends StatefulWidget {
  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  bool isInOtpScreen = false;
  var sessionCode;
  final formKey = GlobalKey<FormState>();
  String _contactNumber = '';

  bool isMobileValid = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  String getEmailNumber() {
    return _emailController.text;
  }

  bool isValidMobileNumber(String input) {
    final RegExp mobileRegex = RegExp(r'^[6789]\d{9}$');
    return mobileRegex.hasMatch(input);
  }

  Future<dynamic> loginAsOwner() async {
    try {
      final response = await http.post(
          Uri.parse(
              'https://mypetwalk.bssstageserverforpanels.xyz/api/owner_login'),
          body: {
            "email": _emailController.text,
            "password": _passwordController.text,
          });
      Map<dynamic, dynamic> jsonResponse = jsonDecode(response.body);
      if (jsonResponse["success"] == true) {
        Twl.getSnackBar(context, jsonResponse["message"]);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                HomeScreen(jsonResponse["user"]["first_name"]),
          ),
        );
        print(jsonResponse);
        return jsonResponse["message"];
      } else if (jsonResponse["success"] == false) {
        print(jsonResponse);
        if (jsonResponse["message"] is String) {
          return jsonResponse["message"];
        } else if (jsonResponse["message"]["email"] != null) {
          return jsonResponse["message"]["email"][0];
        } else if (jsonResponse["message"]["password"] != null) {
          return jsonResponse["message"]["password"][0];
        }
      }
    } catch (e) {
      print(e);
      return {"error": e};
    }
  }

  Future<dynamic> loginAsWalker() async {
    try {
      final response = await http.post(
          Uri.parse(
              'https://mypetwalk.bssstageserverforpanels.xyz/api/walker_login'),
          body: {
            "email": _emailController.text,
            "password": _passwordController.text,
          });
      Map<dynamic, dynamic> jsonResponse = jsonDecode(response.body);
      if (jsonResponse["success"] == true) {
        Twl.getSnackBar(context, jsonResponse["message"]);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                HomeScreen(jsonResponse["user"]["first_name"]),
          ),
        );
        print(jsonResponse);
        return jsonResponse["message"];
      } else if (jsonResponse["success"] == false) {
        if (jsonResponse["message"] is String) {
          return jsonResponse["message"];
        } else if (jsonResponse["message"]["email"] != null) {
          return jsonResponse["message"]["email"][0];
        } else if (jsonResponse["message"]["password"] != null) {
          return jsonResponse["message"]["password"][0];
        }
      }
    } catch (e) {
      print(e);
      return {"error": e};
    }
  }

  Future<void> handleLogin() async {
    if (_emailController.text.isEmpty) {
      Twl.getSnackBar(context, "Email Field is required");
    } else if (_passwordController.text.isEmpty) {
      Twl.getSnackBar(context, "Password Field is required");
    } else {
      List<dynamic> responses = await Future.wait([
        loginAsOwner().catchError(
            (e) => null), // Catch errors to prevent them from propagating
        loginAsWalker().catchError(
            (e) => null), // Catch errors to prevent them from propagating
      ]);

      if (responses[0] == "Invalid email or password" &&
          responses[1] == "Invalid email or password") {
        Twl.getSnackBar(context, 'Invalid email or password');
      }
    }
    // Perform both API calls simultaneously
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final UserProvider _otpProvider =
        Provider.of<UserProvider>(context, listen: false);

    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 15.h,
            // ),
            LogoScreen(),
            // SizedBox(
            //   height: 12.h,
            // ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // isInOtpScreen ? OTPScreen() :
                    // LoginScreenMobileNumber(),
                    Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            text: 'Get Sign In to Start',
                            fontSize: 26.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          SizedBox(height: 1.0.h),
                          TextWidget(
                            text:
                                'We need your email and Password \nbefore getting started!',
                            color: tGray,
                            fontSize: 14.sp,
                          ),
                          SizedBox(
                            height: 3.2.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(width: 0.60, color: tBlue),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: tPrimaryColor),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: tPrimaryColor),
                                    ),
                                    prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(Icons.email)),
                                  ),
                                  onChanged: (value) {
                                    // setState(() {
                                    //   isMobileValid = isValidMobileNumber(value);
                                    // });
                                    // widget.onContactNumberChanged(value);
                                  },
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.2.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    border: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(width: 0.60, color: tBlue),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: tPrimaryColor),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: tPrimaryColor),
                                    ),
                                    prefixIcon: Padding(
                                        padding:
                                            const EdgeInsets.only(right: 8.0),
                                        child: Icon(Icons.lock)),
                                  ),
                                  onChanged: (value) {
                                    // setState(() {
                                    //   isMobileValid = isValidMobileNumber(value);
                                    // });
                                    // widget.onContactNumberChanged(value);
                                  },
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4.0.h),
                    GlobalButton(
                      buttonHeight: 50,
                      buttonWidth: 90.1.w,
                      onTap: (startLoading, stopLoading, btnState) async {
                        handleLogin();
                        // if (formKey.currentState!.validate()) {
                        // try {
                        //   startLoading();
                        //   print(_contactNumber);
                        //   Map<String, String> param = {
                        //     'contact_no': _contactNumber,
                        //   };
                        //   var res = await UserAPI().sendOtp(context, param);
                        //   print(res);
                        //   if (res['status'] == 'OK') {
                        //     _otpProvider.setOtpResponse(
                        //         res['status'],
                        //         res['details']['Details'],
                        //         _contactNumber.toString());
                        //     stopLoading();
                        // Twl.navigateTo(context, HomeScreen());
                        //   } else {
                        //     stopLoading();
                        //     Twl.createAlert(context, "Sorry", res['error']);
                        //   }
                        // } catch (error) {
                        //   // Handle the error here
                        //   print("An error occurred: $error");
                        //   stopLoading();
                        //   Twl.createAlert(context, "Error",
                        //       "An error occurred. Please try again.");
                        // }
                        // }
                      },
                      title: 'Login',
                    ),
                    SizedBox(
                      height: 5.0.h,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          fontSize: 11.sp,
                          text: 'Don\'t have an account? ',
                        ),
                        GestureDetector(
                          onTap: () {
                            Twl.navigateTo(context, Registration());
                          },
                          child: TextWidget(
                            fontSize: 11.sp,
                            text: 'Sign Up',
                            color: tPrimaryColor,
                          ),
                        )
                      ],
                    ),
                    // if (isInOtpScreen)
                    //   Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       TextWidget(
                    //         fontSize: 12,
                    //         text: "Didn't received OTP?",
                    //       ),
                    //       TextWidget(
                    //         fontSize: 12,
                    //         text: 'Resend',
                    //         color: tPrimaryColor,
                    //       )
                    //     ],
                    //   ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 2.8.h,
            // )
          ],
        ),
      ),
    );
  }
}
