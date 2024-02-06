import 'package:Inhouse_Pets/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../constants/constants.dart';
import '../constants/image_constants.dart';
import '../globalFuctions/globalFunctions.dart';
import '../screens/BottomNavigationScreen/bottom_navigation.dart';
import 'button.dart';

class CongratulationsContainer extends StatelessWidget {
  const CongratulationsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 70.5.h,
        decoration: ShapeDecoration(
          color: tWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          // shadows: [

          //   const BoxShadow(
          //     color: Color(0x0A000000),
          //     blurRadius: 4,
          //     offset: Offset(0, 0),
          //     spreadRadius: 0,
          //   )
          // ],
        ),
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Padding(
          padding: EdgeInsets.all(38.0),
          child: Column(
            children: [
              SizedBox(
                height: 1.4.h,
              ),
              Image.asset(
                Images.CONGRATS,
                scale: 4,
              ),
              // SizedBox(
              //   height: .h,
              // ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    text: 'Congratulations! ',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.30,
                    color: tPrimaryColor,
                    textAlign: TextAlign.center,
                  ),
                  TextWidget(
                    text: '👍',
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.30,
                  ),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Align(
                alignment: Alignment.center,
                child: TextWidget(
                  text:
                      "Your account is ready to use. You will be redirected to the Home page in a few seconds.",
                  fontSize: 10.sp,
                  color: tlightRed,
                  fontWeight: FontWeight.w400,
                  height: 1.43,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 3.5.h),
              GlobalButton(
                buttonHeight: 48,
                buttonWidth: 19.1.w,
                onTap: (startLoading, stopLoading, btnState) {
                  Twl.navigateTo(context, BottomaNavi());
                },
                title: 'Ok',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
