// ignore_for_file: must_be_immutable

import 'package:Inhouse_Pets/screens/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import '../globalFuctions/globalFunctions.dart';
import '../providers/userProvider.dart';
import '../screens/LoginScreen/components/location_enable.dart';
import 'button.dart';
import 'text_widget.dart';
import 'textformfield.dart';

class RegisterContent extends StatefulWidget {
  RegisterContent({super.key, required this.size});
  BoxConstraints size;
  @override
  State<RegisterContent> createState() => _RegisterContentState();
}

class _RegisterContentState extends State<RegisterContent> {
  String selectedTitle = "Select Type";

  final formKey = GlobalKey<FormState>();
  bool validateEmail(String email) {
    // Regular expression to validate Gmail format
    String pattern = r'^[\w-]+(\.[\w-]+)*@gmail\.com$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: LayoutBuilder(builder: (context, c) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: "Hello! Register to get started",
              fontSize: c.maxHeight / 27,
              fontWeight: FontWeight.w700,
              letterSpacing: -0.3,
            ),
            SizedBox(height: c.maxHeight / 23),
            Container(
              // width: 20.8.w,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: tSecondaryWhite,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: userProvider.selectedTitle,
                        onChanged: (newValue) {
                          if (newValue != null) {
                            setState(() {
                              userProvider.selectedTitle =
                                  newValue; // Update the value
                            });
                          }
                        },
                        items: <String>['Select Type', 'Owner', 'Walker']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: TextWidget(
                              text: value,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              height: 1.25,
                            ),
                          );
                        }).toList(),
                        icon: const Icon(
                          Icons.arrow_drop_down_rounded,
                          size: 32,
                          color: tPrimaryColor,
                        ),
                        // isExpanded: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            BuildTextFeilds(
              hinttext: "First Name",
              hintStyle: TextStyle(color: tSecondaryBlue),
              labelStyle: TextStyle(color: tSecondaryBlue),
            ),
            SizedBox(
              height: 1.h,
            ),
            BuildTextFeilds(
              hinttext: "Last Name",
              hintStyle: TextStyle(color: tSecondaryBlue),
              labelStyle: TextStyle(color: tSecondaryBlue),
              validator: (String? value) {
                // Check if this field is empty
                if (value == null || value.isEmpty) {
                  return "Email can't be empty";
                } else if (!value.contains(".")) {
                  return "please enter a valid email address";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            BuildTextFeilds(
              hinttext: "Contact No",
              hintStyle: TextStyle(color: tSecondaryBlue),
              labelStyle: TextStyle(color: tSecondaryBlue),
              validator: (String? value) {
                // Check if this field is empty
                if (value == null || value.isEmpty) {
                  return "Email can't be empty";
                } else if (!value.contains(".")) {
                  return "please enter a valid email address";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            BuildTextFeilds(
              hinttext: "Email",
              hintStyle: TextStyle(color: tSecondaryBlue),
              labelStyle: TextStyle(color: tSecondaryBlue),
              validator: (String? value) {
                // Check if this field is empty
                if (value == null || value.isEmpty) {
                  return "Email can't be empty";
                } else if (!value.contains(".")) {
                  return "please enter a valid email address";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            BuildTextFeilds(
              hinttext: "Password",
              hintStyle: TextStyle(color: tSecondaryBlue),
              labelStyle: TextStyle(color: tSecondaryBlue),
              validator: (String? value) {
                // Check if this field is empty
                if (value == null || value.isEmpty) {
                  return "Email can't be empty";
                } else if (!value.contains(".")) {
                  return "please enter a valid email address";
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 1.h,
            ),
            BuildTextFeilds(
              hinttext: "Confirm Password",
              hintStyle: TextStyle(color: tSecondaryBlue),
              labelStyle: TextStyle(color: tSecondaryBlue),
              validator: (String? value) {
                // Check if this field is empty
                if (value == null || value.isEmpty) {
                  return "Email can't be empty";
                } else if (!value.contains(".")) {
                  return "please enter a valid email address";
                } else {
                  return null;
                }
              },
            ),
            GlobalButton(
              buttonHeight: 52,
              buttonWidth: 90.2.w,
              onTap: (startLoading, stopLoading, btnState) {
                // if (formKey.currentState!.validate()) {
                //   Twl.navigateTo(context, Community());
                // }
                Twl.navigateTo(context, HomeScreen("Ali"));
              },
              title: 'Register',
            ),
            SizedBox(height: c.maxHeight / 50),
            Align(
              alignment: Alignment.center,
              child: TextWidget(
                fontSize: widget.size.maxHeight / 50,
                text: 'By Register, you agree to our all ',
                textAlign: TextAlign.center,
              ),
            ),
            //  SizedBox(height: c.maxHeight / 90),
            Align(
              alignment: Alignment.center,
              child: TextWidget(
                fontSize: widget.size.maxHeight / 50,
                text: 'Terms & conditions',
                color: tPrimaryColor,
                textAlign: TextAlign.center,
              ),
            ),
            // SizedBox(
            SizedBox(height: c.maxHeight / 90),
          ],
        );
      }),
    );
  }
}
