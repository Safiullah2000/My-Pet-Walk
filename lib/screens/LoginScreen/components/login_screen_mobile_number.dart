// import 'dart:convert';

// import 'package:Inhouse_Pets/globalFuctions/globalFunctions.dart';
// import 'package:Inhouse_Pets/screens/HomeScreen/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:sizer/sizer.dart';
// import '../../../components/text_widget.dart';
// import '../../../constants/constants.dart';
// import 'package:http/http.dart' as http;

// class LoginScreenMobileNumber extends StatefulWidget {
//   const LoginScreenMobileNumber({
//     super.key,
//     this.onContactNumberChanged,
//   });

//   final onContactNumberChanged;
//   @override
//   State<LoginScreenMobileNumber> createState() =>
//       _LoginScreenMobileNumberState();
// }

// class _LoginScreenMobileNumberState extends State<LoginScreenMobileNumber> {
//   bool isMobileValid = true;
//   TextEditingController _emailController = TextEditingController();
//   TextEditingController _passwordController = TextEditingController();

//   @override
//   void dispose() {
//     _emailController.dispose();
//     super.dispose();
//   }

//   String getEmailNumber() {
//     return _emailController.text;
//   }

//   Future<dynamic> loginAsOwner() async {
//     try {
//       final response = await http.post(
//           Uri.parse(
//               'https://mypetwalk.bssstageserverforpanels.xyz/api/owner_login'),
//           body: {
//             "email": _emailController.text,
//             "password": _passwordController.text,
//           });
//       Map<dynamic, dynamic> jsonResponse = jsonDecode(response.body);
//       if (jsonResponse["success"] == true) {
//         Twl.getSnackBar(context, jsonResponse["message"]);
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => HomeScreen(),
//           ),
//         );
//         print(jsonResponse);
//         return jsonResponse["message"];
//       } else if (jsonResponse["success"] == false) {
//         if (jsonResponse["message"] is String) {
//           return jsonResponse["message"];
//         } else if (jsonResponse["message"]["email"] != null) {
//           return jsonResponse["message"]["email"][0];
//         } else if (jsonResponse["message"]["password"] != null) {
//           return jsonResponse["message"]["password"][0];
//         }
//       }
//     } catch (e) {
//       print(e);
//       return {"error": e};
//     }
//   }

//   Future<dynamic> loginAsWalker() async {
//     try {
//       final response = await http.post(
//           Uri.parse(
//               'https://mypetwalk.bssstageserverforpanels.xyz/api/walker_login'),
//           body: {
//             "email": _emailController.text,
//             "password": _passwordController.text,
//           });
//       Map<dynamic, dynamic> jsonResponse = jsonDecode(response.body);
//       if (jsonResponse["success"] == true) {
//         Twl.getSnackBar(context, jsonResponse["message"]);
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => HomeScreen(),
//           ),
//         );
//         print(jsonResponse);
//         return jsonResponse["message"];
//       } else if (jsonResponse["success"] == false) {
//         if (jsonResponse["message"] is String) {
//           return jsonResponse["message"];
//         } else if (jsonResponse["message"]["email"] != null) {
//           return jsonResponse["message"]["email"][0];
//         } else if (jsonResponse["message"]["password"] != null) {
//           return jsonResponse["message"]["password"][0];
//         }
//       }
//     } catch (e) {
//       print(e);
//       return {"error": e};
//     }
//   }

//   Future<void> handleLogin() async {
//     // Perform both API calls simultaneously
//     List<dynamic> responses = await Future.wait([
//       loginAsOwner().catchError(
//           (e) => null), // Catch errors to prevent them from propagating
//       loginAsWalker().catchError(
//           (e) => null), // Catch errors to prevent them from propagating
//     ]);

//     if (responses[0] == "Invalid email or password" &&
//         responses[1] == "Invalid email or password") {
//       Twl.getSnackBar(context, 'Invalid email or password');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         TextWidget(
//           text: 'Get Sign In to Start',
//           fontSize: 26.sp,
//           fontWeight: FontWeight.w700,
//         ),
//         SizedBox(height: 1.0.h),
//         TextWidget(
//           text: 'We need your email and Password \nbefore getting started!',
//           color: tGray,
//           fontSize: 14.sp,
//         ),
//         SizedBox(
//           height: 3.2.h,
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: TextFormField(
//                 controller: _emailController,
//                 decoration: InputDecoration(
//                   hintText: "Email",
//                   border: const OutlineInputBorder(
//                     borderSide: BorderSide(width: 0.60, color: tBlue),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: tPrimaryColor),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: tPrimaryColor),
//                   ),
//                   prefixIcon: Padding(
//                       padding: const EdgeInsets.only(right: 8.0),
//                       child: Icon(Icons.email)),
//                 ),
//                 onChanged: (value) {
//                   // setState(() {
//                   //   isMobileValid = isValidMobileNumber(value);
//                   // });
//                   // widget.onContactNumberChanged(value);
//                 },
//                 validator: (String? value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your mobile number';
//                   } else if (!isValidMobileNumber(value)) {
//                     return 'Please enter a valid mobile number';
//                   }
//                   return null;
//                 },
//                 style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 3.2.h,
//         ),
//         Row(
//           children: [
//             Expanded(
//               child: TextFormField(
//                 controller: _passwordController,
//                 decoration: InputDecoration(
//                   hintText: "Password",
//                   border: const OutlineInputBorder(
//                     borderSide: BorderSide(width: 0.60, color: tBlue),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: tPrimaryColor),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: tPrimaryColor),
//                   ),
//                   prefixIcon: Padding(
//                       padding: const EdgeInsets.only(right: 8.0),
//                       child: Icon(Icons.lock)),
//                 ),
//                 onChanged: (value) {
//                   // setState(() {
//                   //   isMobileValid = isValidMobileNumber(value);
//                   // });
//                   // widget.onContactNumberChanged(value);
//                 },
//                 validator: (String? value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your mobile number';
//                   } else if (!isValidMobileNumber(value)) {
//                     return 'Please enter a valid mobile number';
//                   }
//                   return null;
//                 },
//                 style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   // Custom validation for a valid mobile number
//   bool isValidMobileNumber(String input) {
//     final RegExp mobileRegex = RegExp(r'^[6789]\d{9}$');
//     return mobileRegex.hasMatch(input);
//   }
// }
