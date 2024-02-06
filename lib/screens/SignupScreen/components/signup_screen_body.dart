
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignupScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          
    // Code for Signup screen body
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 2.0.h),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Full Name',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 2.0.h),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Password',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 2.0.h),
        ElevatedButton(
          onPressed: () {
            // Handle sign up button press
          },
          child: Text('Sign Up'),
        ),
        SizedBox(height: 1.0.h),
        TextButton(
          onPressed: () {
            // Handle login button press
          },
          child: Text('Already have an account? Log in'),
        ),
      ],
    )
  
        ],
      ),
    );
  }
}
    