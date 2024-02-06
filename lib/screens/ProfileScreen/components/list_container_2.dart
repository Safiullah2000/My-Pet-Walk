import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import 'bottom_sheet.dart';

class ListContainer2 extends StatelessWidget {
  const ListContainer2({
    super.key,
    required this.IconImage2,
    required this.textImage2,
    required this.onTapItem,
  });

  final List<String> IconImage2;
  final List<String> textImage2;
  final Function(int) onTapItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.5.h),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 2,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Takes the minimum required height
        children: List.generate(4, (index) {
          bool showDottedLine = index < 3;
          return GestureDetector(
            // Wrap the column with GestureDetector
            onTap: () {
              if (index == 0) {
                Twl.navigateTo(context, Text("data"));
              } else if (index == 3) {
                logOutBottomSheet(context);
              }

              onTapItem(index); // Call the onTapItem callback with index
            },
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      IconImage2[index],
                      scale: 3,
                      color: tPrimaryColor,
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    TextWidget(text: textImage2[index], fontSize: 14.sp)
                  ],
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                if (showDottedLine)
                  DottedDashedLine(
                    height: 1.h,
                    width: 45.h,
                    axis: Axis.horizontal,
                    dashColor: Color.fromARGB(255, 205, 203, 203),
                    dashWidth: 5,
                    strokeWidth: 0.3,
                  ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

void logOutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(15.0),
      ),
    ),
    backgroundColor: tWhite,
    isDismissible: false,
    context: context,
    isScrollControlled: true,
    builder: (context) => Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [LogOutBottomSheet()],
      ),
    ),
  );
}
