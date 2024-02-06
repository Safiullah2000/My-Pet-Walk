import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../components/textformfield.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';

import '../../../providers/userProvider.dart';

class EditProfileScreenBody extends StatefulWidget {
  @override
  State<EditProfileScreenBody> createState() => _EditProfileScreenBodyState();
}

class _EditProfileScreenBodyState extends State<EditProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: tSecondaryGary, width: 1.w)),
                        child: Image.asset(
                          Images.PROFILE1,
                          scale: 4,
                        ),
                      ),
                      Positioned(
                          bottom: -5,
                          right: 20,
                          child: Image.asset(
                            Images.EDIT_PROFILE,
                            scale: 4.5,
                          ))
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        // width: 20.8.w,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: tSecondaryWhite,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(
                            //   width: 1.w,
                            // ),
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
                                  items: <String>['Ms', 'Mrs', 'Mr', 'Dr']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
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
                                    size: 34,
                                    color: tPrimaryColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 1.5.w,
                      ),
                      Expanded(
                        child: BuildTextFeilds(
                          //controller: _userNameController,
                          hinttext: "Username",
                          hintStyle: TextStyle(color: tSecondaryBlue),
                          labelStyle: TextStyle(color: tSecondaryBlue),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Username Can\'t be empty';
                            } else {
                              return null;
                            }
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  BuildTextFeilds(
                    //controller: _emailaddressController,
                    hinttext: "Mobile number",
                    hintStyle: TextStyle(color: tSecondaryBlue),
                    labelStyle: TextStyle(color: tSecondaryBlue),
                    validator:
                        // Check if this field is empty
                        (value) {
                      // if (value.isEmpty ||
                      //     !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      //         .hasMatch(value)) {
                      //   return 'Enter a valid email address';
                      // } else {
                      //   return null;
                      // }
                    },
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  BuildTextFeilds(
                    hinttext: "Email",
                    hintStyle: TextStyle(color: tSecondaryBlue),
                    labelStyle: TextStyle(color: tSecondaryBlue),
                    validator:
                        // Check if this field is empty
                        (value) {
                      if (value.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                              .hasMatch(value)) {
                        return 'Enter a valid email address';
                      } else {
                        return null;
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
