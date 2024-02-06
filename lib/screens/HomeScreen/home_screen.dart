import 'package:Inhouse_Pets/globalFuctions/globalFunctions.dart';
import 'package:Inhouse_Pets/screens/Walk%20History/walk_history.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../components/text_widget.dart';
import '../../constants/constants.dart';
import '../../constants/image_constants.dart';
import 'components/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  String? name;
  HomeScreen(this.name);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shadowColor: tPrimaryColor,
        width: MediaQuery.of(context).size.width / 1.3,
        child: ListView(
          //Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              //padding: EdgeInsets.fromLTRB(20, 40, 0, 0),
              decoration: BoxDecoration(
                color: tPrimaryColor,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(""),
                      radius: MediaQuery.of(context).size.width / 16,
                      child: Icon(
                        Icons.person_rounded,
                        size: MediaQuery.of(context).size.width / 15,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 50,
                    ),
                    Expanded(
                      child: Text(
                        widget.name ?? "Guest",
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 20,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('WALK'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('My Walks'),
              onTap: () {
                Twl.navigateTo(context, WalkHistory());
              },
            ),
          ],
        ),
      ),
      appBar:
          // PreferredSize(
          // preferredSize: Size.fromHeight(100.0),
          // child: /
          AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: tPrimaryColor, // Change the color as needed
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Row(
          children: [
            Icon(
              Icons.location_on_sharp,
              color: tPrimaryColor,
            ),
            TextWidget(
              text: "Madhapur, Hyderabad..",
              fontSize: 10.sp,
              color: tBlack,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: tBlack,
            ),
          ],
        ),
        elevation: 0,
        // automaticallyImplyLeading: false,
        backgroundColor: tAppBarColor,
        // leading: Image.asset(
        //   Images.APPBAR_LOCATION,
        //   color: tPrimaryColor,
        //   scale: 4,
        // ),
        // title: Row(
        //   children: [
        //     TextWidget(
        //       text: 'Madhapur, Hyderabad..',
        //       color: tBlack,
        //       fontSize: 13.sp,
        //     ),
        //     SizedBox(
        //       width: 0.5.w,
        //     ),
        //     Image.asset(
        //       Images.DOWN_ARROW,
        //       scale: 4,
        //     ),
        //   ],
        // ),
        actions: [
          GestureDetector(
            onTap: () {
              // print('Navigate to Notification');
              // Twl.forceNavigateTo(context, NotificationPage());
            },
            child: Image.asset(
              Images.NOTIFICATIONS,
              color: tPrimaryColor,
              scale: 4,
            ),
          ),
        ],
      ),
      body: HomeScreenBody(),
    );
  }
}
