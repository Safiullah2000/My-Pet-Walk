import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/button.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import 'journey.dart';

class Request extends StatefulWidget {
  const Request({super.key});

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 8.1.h,
            ),
            Center(
              child: Image.asset(
                Images.OOPS,
                scale: 4,
              ),
            ),
            SizedBox(
              height: 2.7.h,
            ),
            TextWidget(
              text: 'Oops',
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 1.3.h,
            ),
            Align(
              alignment: Alignment.center,
              child: TextWidget(
                text:
                    'There are no communities found \nraise a request for service',
                fontSize: 13.sp,
                color: tPrimaryColor,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 1.8.h,
            ),
            GlobalButton(
              buttonWidth: 45.1.w,
              buttonHeight: 6.9.h,
              onTap: (startLoading, stopLoading, btnState) {
                Twl.navigateTo(context, Journey());
              },
              title: 'Raise request',
            ),
          ],
        ),
      ),
    );
  }
}
