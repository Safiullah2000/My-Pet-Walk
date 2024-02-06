// ignore_for_file: unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';

class NumberStepper extends StatefulWidget {
  @override
  State<NumberStepper> createState() => _NumberStepperState();
}

class _NumberStepperState extends State<NumberStepper> {
  int activeStep = 1;
  @override
  Widget build(BuildContext context) {
    return EasyStepper(
      activeStepBorderColor: tWhite,
      activeStep: activeStep,
      lineLength: 70,
      lineSpace: 0,
      lineType: LineType.normal,
      defaultLineColor: Colors.white,
      finishedLineColor: tPrimaryColor,
      activeStepTextColor: Colors.black87,
      finishedStepTextColor: tPrimaryColor,
      internalPadding: 0,
      showLoadingAnimation: false,
      stepRadius: 15,
      showStepBorder: false,
      lineDotRadius: 1.5,
      steps: [
        EasyStep(
          customTitle: Column(
            children: [
              TextWidget(
                text: "Placed",
                fontSize: 11.sp,
                color: tPrimaryColor,
              ),
              TextWidget(
                text: "10.20AM",
                fontSize: 8.sp,
                color: tPrimaryColor,
              ),
            ],
          ),
          customStep: Transform.scale(
              scale: 1.6,
              child: Image.asset(
                Images.TICK,
                fit: BoxFit.cover,
              )),
        ),
        EasyStep(
          customStep: Transform.scale(
              scale: 1.6,
              child: Image.asset(
                Images.TICK,
                fit: BoxFit.cover,
              )),
          customTitle: Column(
            children: [
              TextWidget(
                text: "Accepted",
                fontSize: 11.sp,
                color: tPrimaryColor,
              ),
              TextWidget(
                text: "10.30AM",
                fontSize: 8.sp,
                color: tPrimaryColor,
              ),
            ],
          ),
        ),
        EasyStep(
          customStep: Transform.scale(
              scale: 1.6,
              child: Image.asset(
                Images.TICK,
                fit: BoxFit.cover,
              )),
          customTitle: Column(
            children: [
              TextWidget(
                text: "Picked Up",
                fontSize: 11.sp,
                color: tPrimaryColor,
              ),
              TextWidget(
                text: "10.32AM",
                fontSize: 8.sp,
                color: tPrimaryColor,
              ),
            ],
          ),
        ),
        EasyStep(
          customStep: Transform.scale(
              scale: 1.6,
              child: Image.asset(
                Images.TICK,
                fit: BoxFit.cover,
              )),
          customTitle: Column(
            children: [
              TextWidget(
                text: "Delivered",
                fontSize: 11.sp,
                color: tPrimaryColor,
              ),
              TextWidget(
                text: "10.40AM",
                fontSize: 8.sp,
                color: tPrimaryColor,
              ),
            ],
          ),
        ),
      ],
      onStepReached: (index) => setState(() => activeStep = index),
    );
  }
}
