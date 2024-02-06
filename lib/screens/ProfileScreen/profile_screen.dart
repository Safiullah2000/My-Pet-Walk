
import 'package:flutter/material.dart';
import '../../components/common_app_bar.dart';
import 'components/profile_screen_body.dart';


class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title:"Profile",),
      body: ProfileScreenBody(),
    );
  }
}
    