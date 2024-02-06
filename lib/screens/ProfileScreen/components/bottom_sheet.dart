import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../LoginScreen/login_screen.dart';

class LogOutBottomSheet extends StatefulWidget {
  LogOutBottomSheet({super.key});

  @override
  State<LogOutBottomSheet> createState() => _LogOutBottomSheetState();
}

class _LogOutBottomSheetState extends State<LogOutBottomSheet> {
  bool isLogout = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: 3.h),
                    Center(
                      child: TextWidget(
                        text: 'Log out',
                        color: tBlack,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Center(
                      child: TextWidget(
                        text: 'Do you want to log out ?',
                        color: tBlack,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 45,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                  color: tPrimaryColor,
                                  width: 1.5,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  isLogout = true;
                                });

                                // Simulate a logout action, replace with your actual logic
                                Future.delayed(Duration(seconds: 2), () {
                                  setState(() {
                                    isLogout = false;
                                  });
                                  Navigator.pop(context);
                                  Twl.forceNavigateTo(context, LoginScreen());
                                });
                              },
                              child: isLogout
                                  ? Center(
                                      child: CircularProgressIndicator(),
                                    )
                                  : TextWidget(
                                      text: 'Yes',
                                      color: tPrimaryColor,
                                      fontSize: 13.sp,
                                    ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Twl.navigateBack(context);
                            },
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: tPrimaryColor,
                                border: Border.all(
                                  color: tPrimaryColor,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: TextWidget(
                                  text: 'No',
                                  color: tWhite,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 2.h),
                  ],
                ),
              ),
            ),
            Positioned(
              top: -35,
              left: 40.w,
              child: Container(
                height: 6.h,
                width: 6.h,
                decoration: BoxDecoration(
                  color: tWhite,
                  // border: Border.all(
                  //   color: tWhite,
                  //   width: 4,
                  // ),
                  borderRadius: BorderRadius.circular(60),
                  boxShadow: [tBoxShadow],
                ),
                child: Container(
                  height: 5.h,
                  width: 5.h,
                  // decoration: BoxDecoration(
                  //   color: tPrimaryColor,
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  child: Image.asset(
                    Images.LOGOUTT,
                    scale: 2,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
