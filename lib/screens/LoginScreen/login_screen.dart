
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import 'components/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: tWhite,
      body: LoginScreenBody(),
    );
  }
}
    