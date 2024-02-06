// import 'package:pets/components/button.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// import '../../../components/congrats_container.dart';
import '../../../components/button.dart';
import '../../../components/common_app_bar.dart';
import '../../../components/congrats_container.dart';
import '../../../components/text_widget.dart';
import '../../../components/textfield.dart';
import '../../../constants/constants.dart';

class Journey extends StatefulWidget {
  const Journey({super.key});

  @override
  State<Journey> createState() => _JourneyState();
}

class _JourneyState extends State<Journey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: '',
        backgroundColor: tWhite,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(child: SingleChildScrollView(child: JourneyContent())),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GlobalButton(
                      buttonHeight: 56,
                      buttonWidth: 90.1.w,
                      onTap: (startLoading, stopLoading, btnState) {
                        showGeneralDialog(
                          context: context,
                          barrierColor: Colors.black.withOpacity(0.5),
                          pageBuilder: (BuildContext buildContext,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return Center(
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),

                                  // Dialog background
                                  width: double.infinity, // Dialog width
                                  height: 405,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: CongratulationsContainer(),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      title: 'Submit'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class JourneyContent extends StatelessWidget {
  const JourneyContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 4.h,
        ),
        TextWidget(
          text: 'Start your Journey with us!',
          fontSize: 26.sp,
          fontWeight: FontWeight.w700,
          height: 1.30,
          letterSpacing: -0.30,
        ),
        SizedBox(
          height: 13.0.h,
        ),
        TextFieldContainer(
            hintText: 'Select your community',
            suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 25,
                  color: tPrimaryColor,
                ))),
        SizedBox(
          height: 1.2.h,
        ),
        TextFieldContainer(
            hintText: 'Select your Tower/Block',
            suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_drop_down_rounded,
                  size: 25,
                  color: tPrimaryColor,
                ))),
        SizedBox(
          height: 1.2.h,
        ),
        TextFieldContainer(
          hintText: 'Select your Floor',
        ),
        SizedBox(
          height: 1.2.h,
        ),
        TextFieldContainer(
          hintText: 'Select your Flat',
        ),
        SizedBox(
          height: 18.0.h,
        ),
      ],
    );
  }
}
