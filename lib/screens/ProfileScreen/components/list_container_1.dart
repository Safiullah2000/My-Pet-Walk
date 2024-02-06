import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:dotted_dashed_line/dotted_dashed_line.dart';

import '../../../components/button.dart';
import '../../../components/home.dart';
import '../../../components/text_widget.dart';
import '../../../components/textfield.dart';
import '../../../constants/constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../OrderHistoryScreen/order_screen.dart';

class ListContainer1 extends StatefulWidget {
  ListContainer1({
    super.key,
    required this.IconImage,
    required this.textImage,
  });

  final List<String> IconImage;
  final List<String> textImage;

  @override
  State<ListContainer1> createState() => _ListContainer1State();
}

int _selectedIndex = -1;
List<String> itemTexts = ['Home', 'Work', 'Hotel', 'Other'];

class _ListContainer1State extends State<ListContainer1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.5.h),
      decoration: ShapeDecoration(
        color: tWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: [
          BoxShadow(
            color: SecondaryBlack,
            blurRadius: 2,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Takes the minimum required height
        children: List.generate(widget.IconImage.length, (index) {
          bool showDottedLine = index < 3;
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  if (index == 0) {
                    Twl.navigateTo(context, OrderHistoryScreen());
                  } else if (index == 1) {
                    myAddressBottomSheet(context);
                  }
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      widget.IconImage[index],
                      scale: 3,
                      color: tPrimaryColor
                    ),
                    SizedBox(
                      width: 1.h,
                    ),
                    TextWidget(text: widget.textImage[index], fontSize: 14.sp),
                  ],
                ),
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
                  dashWidth: 6,
                  strokeWidth: 0.3,
                ),
            ],
          );
        }),
      ),
    );
  }
}

void myAddressBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
    ),
    builder: (BuildContext context) {
      return Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      fontSize: 24.sp,
                      text: "My address",
                      letterSpacing: 0.2,
                      height: 36,
                      fontWeight: FontWeight.w700,
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
              ),
              Divider(),
              Home(),
              SizedBox(height: 3.5.h),
              GestureDetector(
                onTap: () {
                  editModelBottomSheet(context);
                },
                child: Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: tPrimaryColor),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: TextWidget(
                    text: 'Add new address',
                    fontSize: 14.sp,
                    color: tPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

Future<dynamic> editModelBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    builder: (BuildContext context) {
      return Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      fontSize: 22.sp,
                      text: "Edit address",
                      letterSpacing: 0.2,
                      height: 36,
                      fontWeight: FontWeight.w700,
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
                Divider(color: tLightWhite),
                SizedBox(
                  height: 1.5.h,
                ),
                TextFieldContainer(
                  hintText: 'Ayyappa Society, Madhapur, Hyd...',
                  prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.location_on,
                        color: tPrimaryColor,
                      )),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                TextFieldContainer(
                  hintText: 'Complete address',
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                TextFieldContainer(
                  hintText: 'Floor no/ Block /Flat no',
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TextWidget(
                          text: 'Tag Location',
                          fontSize: 11.sp,
                          color: tGray,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          for (int index = 0; index < itemTexts.length; index++)
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.0),
                              child: Container(
                                height: 21,
                                width: 56,
                                child: InkWell(
                                  onTap: () {
                                    // ignore: unused_element
                                    setState() {
                                      _selectedIndex = index;
                                    }

                                    ;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: _selectedIndex == index
                                          ? Border.all(color: tPrimaryColor)
                                          : Border.all(color: tGray),
                                      boxShadow: [tBoxShadow],
                                      color: _selectedIndex == index
                                          ? tPrimaryColor
                                          : tWhite,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Center(
                                      child: TextWidget(
                                        text: itemTexts[index],
                                        fontSize: 9.sp,
                                        color: _selectedIndex == index
                                            ? tPrimaryColor
                                            : tGray,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.5.h,
                ),
                GlobalButton(
                    buttonWidth: 85.w,
                    buttonHeight: 56,
                    onTap: (startLoading, stopLoading, btnState) {
                      // _savedAddress(context);
                    },
                    title: "Save Address")
              ],
            ),
          ),
        ),
      );
    },
  );
}
