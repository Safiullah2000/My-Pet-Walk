import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/home.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';

class MyAddressBottomSheet extends StatelessWidget {
  const MyAddressBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  fontSize: 24,
                  text: "My address",
                  letterSpacing: 0.2,
                  height: 36,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close_rounded),
                  color: tPrimaryColor,
                  iconSize: 30,
                ),
              ],
            ),
            Divider(),
            Home(),
          ],
        ),
      ),
    );
  }
}
