import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import '../constants/image_constants.dart';
import 'button.dart';

import 'text_widget.dart';
import 'textfield.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = -1;

  List<String> itemTexts = ['Home', 'Work', 'Hotel', 'Other'];

  void _editAddressBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
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
                            for (int index = 0;
                                index < itemTexts.length;
                                index++)
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 3.0),
                                child: Container(
                                  height: 21,
                                  width: 56,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        _selectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: _selectedIndex == index
                                            ? Border.all(color: tPrimaryColor)
                                            : Border.all(color: tGray),
                                        boxShadow: [tBoxShadow],
                                        color: _selectedIndex == index
                                            ? tWhite
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        // elevation: 3,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x26000000),
              blurRadius: 4,
              offset: Offset(0, 1),
              spreadRadius: 0,
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(Images.HOME, color: tPrimaryColor, scale: 3),
              SizedBox(width: 2.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        fontSize: 12.sp,
                        text: 'Home',
                        color: Color(0xFF1F1F1F),
                        fontWeight: FontWeight.w600,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: TextWidget(
                          fontSize: 8.6.sp,
                          text:
                              'Flat no 103, Block - A, Alekhya homes,\nMadhapur, Hyderabad. 500081',
                          color: Color(0xFF7C7C7C),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  _editAddressBottomSheet(context);
                },
                child: Image.asset(
                  Images.EDIT,
                  color: tPrimaryColor,
                  scale: 4,
                  width: 30,
                  height: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
