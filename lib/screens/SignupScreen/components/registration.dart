import 'dart:convert';

import 'package:Inhouse_Pets/components/button.dart';
import 'package:Inhouse_Pets/components/text_widget.dart';
import 'package:Inhouse_Pets/components/textformfield.dart';
import 'package:Inhouse_Pets/globalFuctions/globalFunctions.dart';
import 'package:Inhouse_Pets/providers/userProvider.dart';
import 'package:Inhouse_Pets/screens/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../components/leading_icon_component.dart';

import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class Registration extends StatefulWidget {
  Registration({
    super.key,
  });

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String selectedTitle = "Select Type";

  final formKey = GlobalKey<FormState>();
  bool validateEmail(String email) {
    // Regular expression to validate Gmail format
    String pattern = r'^[\w-]+(\.[\w-]+)*@gmail\.com$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(email);
  }

  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  TextEditingController contactNo = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController c_password = TextEditingController();

  Future<void> ownerRegister() async {
    if (firstName.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter First Name");
    } else if (lastName.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter First Name");
    } else if (contactNo.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter Contact Number");
    } else if (email.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter Email");
    } else if (password.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter Password");
    } else if (c_password.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter Confirm Password");
    } else {
      try {
        final response = await http.post(
            Uri.parse(
                'https://mypetwalk.bssstageserverforpanels.xyz/api/owner_register'),
            body: {
              "first_name": firstName.text,
              "last_name": lastName.text,
              'contact_number': contactNo.text,
              'email': email.text,
              'password': password.text,
              'confirm_password': c_password.text,
            });
        Map<dynamic, dynamic> jsonResponse = jsonDecode(response.body);
        if (jsonResponse["success"] == true) {
          Twl.getSnackBar(context, jsonResponse["message"]);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  HomeScreen(jsonResponse["data"]["first_name"]),
            ),
          );
          print(jsonResponse);
        } else if (jsonResponse["success"] == false) {
          Twl.getSnackBar(context, jsonResponse.toString());
        }
      } catch (e) {
        print(e);
      }
    }
  }

  Future<void> walkerRegister() async {
    if (firstName.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter First Name");
    } else if (lastName.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter First Name");
    } else if (contactNo.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter Contact Number");
    } else if (email.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter Email");
    } else if (password.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter Password");
    } else if (c_password.text.isEmpty) {
      Twl.getSnackBar(context, "Please Enter Confirm Password");
    } else {
      try {
        final response = await http.post(
            Uri.parse(
                'https://mypetwalk.bssstageserverforpanels.xyz/api/walker_register'),
            body: {
              "first_name": firstName.text,
              "last_name": lastName.text,
              'contact_number': contactNo.text,
              'email': email.text,
              'password': password.text,
              'confirm_password': c_password.text,
            });
        Map<dynamic, dynamic> jsonResponse = jsonDecode(response.body);
        if (jsonResponse["success"] == true) {
          Twl.getSnackBar(context, jsonResponse["message"]);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  HomeScreen(jsonResponse["data"]["first_name"]),
            ),
          );
          print(jsonResponse);
        } else if (jsonResponse["success"] == false) {
          Twl.getSnackBar(context, jsonResponse.toString());
        }
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: tWhite,
      appBar: AppBar(
        backgroundColor: tWhite,
        elevation: 0,
        leading: LeadingIcon(),
      ),
      body: LayoutBuilder(builder: (context, c) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Image.asset(Images.SALOON_LOGO, scale: 3),
            ),
            Flexible(
              flex: 25,
              child: Form(
                key: formKey,
                child: Padding(
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
                                          userProvider.selectedTitle = newValue;
                                          selectedTitle =
                                              newValue; // Update the value
                                        });
                                      }
                                    },
                                    items: <String>[
                                      'Select Type',
                                      'Owner',
                                      'Walker'
                                    ].map<DropdownMenuItem<String>>(
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
                          Controller: firstName,
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
                          Controller: lastName,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        BuildTextFeilds(
                          hinttext: "Contact No",
                          KeyboardType: TextInputType.phone,
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
                          Controller: contactNo,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        BuildTextFeilds(
                          hinttext: "Email",
                          KeyboardType: TextInputType.emailAddress,
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
                          Controller: email,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        BuildTextFeilds(
                          hinttext: "Password",
                          obscureText: true,
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
                          Controller: password,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        BuildTextFeilds(
                          hinttext: "Confirm Password",
                          obscureText: true,
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
                          Controller: c_password,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        GlobalButton(
                          buttonHeight: 52,
                          buttonWidth: 90.2.w,
                          onTap: (startLoading, stopLoading, btnState) {
                            // if (formKey.currentState!.validate()) {
                            //   Twl.navigateTo(context, Community());
                            // }
                            if (selectedTitle == "Owner") {
                              ownerRegister();
                            } else if (selectedTitle == "Walker") {
                              walkerRegister();
                            } else {
                              Twl.getSnackBar(context, "Please Select Type");
                            }
                          },
                          title: 'Register',
                        ),
                        SizedBox(height: c.maxHeight / 50),
                        Align(
                          alignment: Alignment.center,
                          child: TextWidget(
                            fontSize: c.maxHeight / 50,
                            text: 'By Register, you agree to our all ',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        //  SizedBox(height: c.maxHeight / 90),
                        Align(
                          alignment: Alignment.center,
                          child: TextWidget(
                            fontSize: c.maxHeight / 50,
                            text: 'Terms & conditions',
                            color: tPrimaryColor,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        // SizedBox(
                        SizedBox(height: c.maxHeight / 120),
                      ],
                    );
                  }),
                ),
              ),
            ),
            // SizedBox(height: c.maxHeight / 25),
            // ),
          ],
        );
      }),
    );
  }
}
