import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';

import '../../../globalFuctions/globalFunctions.dart';
import '../../EditProfileScreen/edit_profile_screen.dart';

import 'list_container_1.dart';
import 'list_container_2.dart';

class ProfileScreenBody extends StatelessWidget {
  // ignore: unused_element
  void _handleLogout(BuildContext context) {}
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: tSecondaryGary, width: 1.w)
                    // borderRadius: BorderRadius.circular(0)

                    ),
                child: Image.asset(
                  Images.PROFILE1,
                  scale: 4,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              TextWidget(
                text: 'Avinash naidu',
                fontSize: 19.sp,
              ),
              TextWidget(
                text: 'rowthuavinash@gmail.com',
                fontSize: 14.sp,
                color: tGray,
              ),
              SizedBox(
                height: 2.h,
              ),
              GestureDetector(
                onTap: () {
                  Twl.navigateTo(context, EditProfileScreen());
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tPrimaryColor,
                  ),
                  width: 43.w,
                  height: 5.h,
                  child: Row(
                    children: [
                      Image.asset(
                        Images.PROFILEEDIT,
                        scale: 4,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      TextWidget(
                        text: "Edit Profile",
                        fontSize: 12.sp,
                        color: tWhite,
                      )
                    ],
                  ),
                ),
              ),

              // GlobalButton(
              //   title: "Edit profile",
              //   buttonHeight: 5.h,
              //   buttonWidth: 40.w,
              //   onTap: (startLoading, stopLoading, btnState) {},
              // ),
              SizedBox(
                height: 1.h,
              ),
              ListContainer1(
                IconImage: [Images.ELEMENT1, Images.ELEMENT2, Images.ELEMENT4],
                textImage: [
                  "Order history",
                  "My Address",
                  "Share app",
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              ListContainer2(
                IconImage2: [
                  Images.ELEMENT5,
                  Images.ELEMENT6,
                  Images.ELEMENT7,
                  Images.ELEMENT8,
                ],
                textImage2: [
                  "Support/ Chat with us",
                  "Privacy & policy",
                  "Terms & conditions",
                  "Logout",
                ],
                onTapItem: (index) {
                  // showModalBottomSheet(
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.vertical(
                  //       top: Radius.circular(15.0),
                  //     ),
                  //   ),
                  //   backgroundColor: tWhite,
                  //   isDismissible: false,
                  //   context: context,
                  //   isScrollControlled: true,
                  //   builder: (context) => Padding(
                  //     padding: EdgeInsets.only(
                  //         bottom: MediaQuery.of(context).viewInsets.bottom),
                  //     child: Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       mainAxisSize: MainAxisSize.min,
                  //       children: [LogOutBottomSheet()],
                  //     ),
                  //   ),
                  // );

                  // if (index == 3) {
                  //   _handleLogout(context);
                  // }
                },
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
