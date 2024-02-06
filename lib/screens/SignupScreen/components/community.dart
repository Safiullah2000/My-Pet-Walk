//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../components/button.dart';
import '../../../components/common_app_bar.dart';

import '../../../constants/constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import 'journey.dart';
import 'radio_list_column.dart';
import 'request.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  bool isInRequest = false;
  late final FocusNode _searchFocusNode;
  TextEditingController _searchTextController = TextEditingController();
  int selectedRadio = -1;

  changeToRequest() {
    setState(() {
      isInRequest = true;
    });
  }

  navigateToJourney() {
    Twl.navigateTo(context, Journey());
  }

  @override
  void initState() {
    super.initState();
    _searchFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    _searchTextController.dispose();
    super.dispose();
  }

  // ignore: unused_element
  void _onSearchBarTap() {
    FocusScope.of(context).requestFocus(_searchFocusNode);
  }

  void setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: "Select your Community",
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.h),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: SearchBar(
                  elevation: MaterialStateProperty.all(1.0),
                  side:
                      MaterialStateProperty.all(BorderSide(color: tlightBlue)),
                  shape:
                      MaterialStateProperty.all(const ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  )),
                  padding: MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                  leading: Icon(Icons.search),
                  hintText: 'Search by name',
                  constraints: BoxConstraints(minHeight: 40, maxHeight: 40),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 5.h,
                //   padding: EdgeInsets.symmetric(horizontal: 15),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(10),
                //     color: tWhite,
                //     border: Border.all(color: tlightBlue),
                //   ),
                //   child: GestureDetector(
                //     onTap: _onSearchBarTap,
                //     child:
                //     //Row(
                //     //   children: [
                //     //     Image.asset(
                //     //       Images.SEARCH,
                //     //       scale: 5,
                //     //     ),
                //     //     SizedBox(
                //     //       width: 1.0.h,
                //     //     ),
                //     //     Expanded(
                //     //       child: TextField(
                //     //         controller: _searchTextController,
                //     //         focusNode: _searchFocusNode,
                //     //         decoration: InputDecoration(
                //     //           hintText: 'Search by name',
                //     //           hintStyle: TextStyle(color: tGray),
                //     //           border: InputBorder.none,
                //     //         ),
                //     //       ),
                //     //     ),
                //     //   ],
                //     // ),
                //   ),
                // ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: isInRequest ? Request() : RadioListColumn(),
                ),
              ),
            ),
            if (!isInRequest)
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GlobalButton(
                    buttonHeight: 6.6.h,
                    buttonWidth: 90.1.w,
                    onTap: (startLoading, stopLoading, btnState) {
                      changeToRequest();
                    },
                    title: 'Next',
                  ),
                ],
              ),
            // SizedBox(
            //   height: 1.h,
            // )
          ],
        ),
      ),
      // body: SingleChildScrollView(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Center(
      //           child: Container(
      //             width: 90.5.w,
      //             height: 5.h,
      //             padding: EdgeInsets.symmetric(horizontal: 16),
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(10),
      //               color: tWhite,
      //               border: Border.all(color: tlightBlue),
      //             ),
      //             child: GestureDetector(
      //               onTap: _onSearchBarTap,
      //               child: Row(
      //                 children: [
      //                   Image.asset(
      //                     Images.SEARCH,
      //                     scale: 5,
      //                   ),
      //                   SizedBox(
      //                     width: 1.0.h,
      //                   ),
      //                   TextField(
      //                     controller: _searchTextController,
      //                     focusNode: _searchFocusNode,
      //                     decoration: InputDecoration(
      //                       hintText: 'Search by name',
      //                       hintStyle: TextStyle(color: tGray),
      //                       border: InputBorder.none,
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),

      //         Expanded(
      //           child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: isInRequest ? Request() : RadioListColumn(),
      //           ),
      //         ),
      //         // GlobalButton(
      //         //   buttonHeight: 5.6.h,
      //         //   buttonWidth: 90.1.w,
      //         //   onTap: (startLoading, stopLoading, btnState) {
      //         //     if (isInRequest) {
      //         //       navigateToJourney();
      //         //     } else {
      //         //       changeToRequest();
      //         //     }
      //         //   },
      //         //   title: 'Next',
      //         //   // isInRequest ? 'Raise request' :
      //         // ),
      //         if (!isInRequest)
      //           GlobalButton(
      //             buttonHeight: 5.6.h,
      //             buttonWidth: 90.1.w,
      //             onTap: (startLoading, stopLoading, btnState) {
      //               changeToRequest();
      //             },
      //             title: 'Next',
      //           ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
