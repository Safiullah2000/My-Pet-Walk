import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../globalFuctions/globalFunctions.dart';

import '../../providers/userProvider.dart';
import '../../responsive.dart';

import '../LoginScreen/login_screen.dart';

class OnboardingPage extends StatefulWidget {
  OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var currentPage = 0;

  bool get isLastPage => currentPage == splashData.length - 1;

  var pageControll = PageController();

  late List<Map<String, String>> splashData = [
    {
      'title': 'Store or Individual',
      'suntitle':
          'Register yourself if you own a store or provide professional services as an individual',
      // 'image':Images.OnBoardScreen1,
    },
    {
      'title': 'Offers',
      'suntitle':
          'Let the world know the offers you provide for the products or services you sell.',
      // 'image':Images.OnBoardScreen2
    },
    {
      'title': 'Connect',
      'suntitle':
          'Connect with your customers like never before and gain the returns you deserve.',
      // 'image':
    }
  ];

  void initState() {
    super.initState();
    initializeApp();
  }

  Future<void> initializeApp() async {
    // ignore: unused_local_variable
    final userProvider = Provider.of<UserProvider>(context, listen: false);

    // Get the authCode from the UserProvider
    // String? authCode = userProvider.authCode;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? authCode = await prefs.getString('authCode');

    //     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // var authCode = sharedPreferences.getString('authCode')!;

    print("authcode");
    print(authCode);
    // if (authCode != null) {
    //   // Call the checkApi method to get user data
    //   var result = await UserAPI().checkApi(context, authCode.toString());

    //   if (result['status'] == 'OK') {
    //     // User is authenticated, navigate to HomeScreen
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(builder: (context) => BottomaNavi()),
    //     );
    //   } else {
    //     // User is not authenticated, navigate to LoginScreen or any other appropriate screen
    //     Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(builder: (context) => LoginScreen()),
    //     );
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              PageView.builder(
                  onPageChanged: (page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                  controller: pageControll,
                  itemCount: splashData.length,
                  itemBuilder: (context, index) {
                    return OnboardingWidget(
                      title: splashData[index]['title'],
                      subtitle: splashData[index]['suntitle'],
                      // image: introController.splashData[index]['image'],
                      titlecolor: tBlack,
                      subtitlecolor: tGray,
                      height: 20.w,
                    );
                  }),
              Column(
                children: [
                  Spacer(),
                  Container(
                      alignment: Alignment.center,
                      color: tWhite,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 16),
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  alignment: Alignment.centerRight,
                                  // width: 50.w,
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: List.generate(
                                        splashData.length,
                                        (index) => Container(
                                          margin: EdgeInsets.all(5),
                                          height: 6,
                                          width: currentPage == index ? 20 : 20,
                                          decoration: BoxDecoration(
                                              color: currentPage == index
                                                  ? tPrimaryColor
                                                  : Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(2)),
                                        ),
                                      )),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Twl.navigateTo(context, LoginScreen());
                                  },
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    // width: 30.w,
                                    child: Container(
                                      alignment: Alignment.center,
                                      width: isTab(context) ? 100 : 60,
                                      height: isTab(context) ? 40 : 25,
                                      decoration: BoxDecoration(
                                          color: tPrimaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Text(
                                        "skip",
                                        style: TextStyle(
                                            color: tWhite, fontSize: 12.sp),
                                      ),
                                    ),
                                  ),
                                ),
                              ])))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
// class OnboardingPage extends StatefulWidget {

// }

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget(
      {Key? key,
      this.title,
      this.subtitle,
      this.image,
      this.title2,
      this.titlecolor,
      this.height,
      this.subtitlecolor})
      : super(key: key);
  final String? title;
  final String? title2;
  final String? subtitle;
  final image;
  final titlecolor;
  final height;
  final subtitlecolor;
  get tprimaryColor => null;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FlutterLogo(
            size: 65.h,
          ),
          // Image.asset(
          //   image,
          //   height: MediaQuery.of(context).size.height * 0.57,
          //   width: MediaQuery.of(context).size.width,
          //   fit: BoxFit.fill,
          // ),
          SizedBox(
            height: height,
          ),
          Text(
            title!,
            style: TextStyle(
                color: titlecolor,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: height / 3,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Text(
              subtitle!,
              style: TextStyle(
                  color: subtitlecolor,
                  height: 1.7,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
