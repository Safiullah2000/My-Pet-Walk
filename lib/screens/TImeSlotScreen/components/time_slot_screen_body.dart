import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/button.dart';
import '../../../components/date_card.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../MyCartScreen/my_cart_screen.dart';

class TimeSlotScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 2.h,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  DateCard(),
                  SizedBox(
                    height: 1.h,
                  ),
                ],
              );
            },
          ),
        ),
        GlobalButton(
          title: 'Next',
          onTap: (startLoading, stopLoading, btnState) {
            Twl.navigateTo(context, MyCartScreen());
          },
          buttonHeight: 6.6.h,
          buttonWidth: 90.w,
        )
      ],
    );
  }
}
