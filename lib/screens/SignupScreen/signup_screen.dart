import 'package:flutter/material.dart';
import '../../components/common_app_bar.dart';
import 'components/signup_screen_body.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: "",
      ),
      body: SignupScreenBody(),
    );
  }
}
