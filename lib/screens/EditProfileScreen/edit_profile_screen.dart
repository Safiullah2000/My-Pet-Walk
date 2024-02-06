import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/button.dart';
import '../../components/common_app_bar.dart';
import 'components/edit_profile_screen_body.dart';

class EditProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'Edit Profile'),
      //AppBar(
      //   title: Text('EditProfileScreen'),
      // ),
      body: EditProfileScreenBody(),
      floatingActionButton: GlobalButton(
        title: 'Update',
        onTap: (startLoading, stopLoading, btnState) {
          //  Twl.navigateTo(context, MyCartScreen());
        },
        buttonHeight: 56,
        buttonWidth: 50.w,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
