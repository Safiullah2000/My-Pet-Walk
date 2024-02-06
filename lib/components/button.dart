// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:loading_icon_button/loading_icon_button.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class GlobalButton extends StatefulWidget {
  GlobalButton(
      {required this.buttonWidth,
      required this.buttonHeight,
      required this.onTap,
      required this.title});
  final double buttonWidth;
  final double buttonHeight;
  final onTap;
  final title;

  @override
  State<GlobalButton> createState() => _GlobalButtonState();
}

class _GlobalButtonState extends State<GlobalButton> {
  //  bool isLoading = false;

  //  _handleTap() async {
  //   print('hereeee');
  //   setState(() {
  //     isLoading = true;
  //   });

  //   // Perform your asynchronous actions, such as making API calls
  //   await _performAsyncActions();

  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  // Future<void> _performAsyncActions() async {
  //     widget.onTap();
  //   // Perform your asynchronous actions here
  //   // For example, make an API call using UserProvider and manage the state there
  //   // UserProvider().verifyOtp(context, param);

  //   // You can update the UserProvider state here if needed
  //   // UserProvider().setOtpEntered(true);
  // }

  @override
  Widget build(BuildContext context) {
    // return Align(
    //   alignment: Alignment.bottomCenter,
    //   child: SizedBox(
    //     width: widget.buttonWidth,
    //     height: widget.buttonHeight,
    //     child: ElevatedButton(
    //       onPressed: isLoading ? null : _handleTap,
    //       style: ElevatedButton.styleFrom(
    //         backgroundColor: tPrimaryColor,
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(10),
    //         ),
    //         //  minimumSize: Size(390, 50),
    //       ),
    //       child: isLoading
    //           ? CircularProgressIndicator() :TextWidget(
    //         fontSize: 13.sp,
    //         text: widget.title,
    //         color: tWhite,
    //       ),
    //     ),
    //   ),
    // );

    return Container(
      decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     color: Color(0x99FF7A30),
          //     blurRadius: 10,
          //     offset: Offset(1, 3),
          //     spreadRadius: 0,
          //   ),
          // ],
          ),
      child: ArgonButton(
        width: widget.buttonWidth,
        height: widget.buttonHeight,
        borderRadius: 10.0,
        elevation: 10,
        color: tPrimaryColor,
        child: Text(
          widget.title,
          style: TextStyle(
              color: tWhite, fontSize: 13.sp, fontWeight: FontWeight.w500),
        ),
        loader: Container(
          padding: EdgeInsets.all(10),
          child: SpinKitRotatingCircle(
            color: tWhite,
            // size: loaderWidth ,
          ),
        ),
        onTap: widget.onTap,
      ),
    );
  }
}
