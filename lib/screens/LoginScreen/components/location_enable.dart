import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:lottie/lottie.dart';
import '../../../components/button.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../BottomNavigationScreen/bottom_navigation.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhite,
      // appBar: CommonAppBar(
      //   title: '',
      // ),
      body: Padding(
        padding: const EdgeInsets.all(45.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(Images.LOCATIONIMAGE, height: 40.h),
              // Image.asset(
              //   Images.LOCATIONIMAGE,
              //   scale: 3,
              //   // height: 30.h,
              //   // width: 30.h,
              // ),
              TextWidget(
                text: "Enable Your Location",
                fontSize: 19.sp,
                fontWeight: FontWeight.w700,
              ),
              SizedBox(
                height: 1.h,
              ),
              TextWidget(
                textAlign: TextAlign.center,
                text:
                    "Please allow to use your location to show nearby restaurant on the map.",
                fontSize: 14.sp,
                color: tLightGray,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 3.h,
              ),
              GlobalButton(
                title: 'Enable Location',
                onTap: (startLoading, stopLoading, btnState) {
                  Twl.forceNavigateTo(context, BottomaNavi());
                },
                buttonHeight: 7.0.h,
                buttonWidth: 65.1.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
