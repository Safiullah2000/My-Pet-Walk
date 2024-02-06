
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/button.dart';
import '../../../components/order_item_card.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../OrderDetailsScreen/order_details_screen.dart';

// ignore: must_be_immutable
class MyOrderHistory extends StatefulWidget {
  List items = [];

  MyOrderHistory({super.key, required this.items});

  @override
  State<MyOrderHistory> createState() => _MyOrderHistoryState();
}

class _MyOrderHistoryState extends State<MyOrderHistory> {
  List<Color> _containerColors = List.generate(5, (_) => tWhite);
  List<bool> _itemSelectedStatus = List.generate(5, (_) => false);
  int _selectedIndex = -1;
  List status = ['Waiting for pickup', 'Ongoing', 'Cancelled', 'Delivered'];
  void _filterByBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
      ),
      builder: (BuildContext context) {
        return Container(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                          text: "Filter by",
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w700),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close_rounded),
                        color: tPrimaryColor,
                        iconSize: 30,
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 1.h,
                  ),
                  TextWidget(
                    text: "Status",
                    fontSize: 14.sp,
                    color: tGray,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    height: 14.h,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 4,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;

                                _itemSelectedStatus =
                                    List.generate(5, (i) => i == index);
                                _containerColors = List.generate(5, (i) {
                                  return i == index ? tPrimaryColor : tWhite;
                                });
                              });
                              print(_selectedIndex);
                              print(index);
                            },
                            child: Container(
                              decoration: ShapeDecoration(
                                color: _containerColors[index],
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 0.50, color: tPrimaryColor),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Center(
                                child: TextWidget(
                                  text: status[index],
                                  color: _itemSelectedStatus[index]
                                      ? tWhite
                                      : tPrimaryColor,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(
                    child: GlobalButton(
                        buttonWidth: 85.w,
                        buttonHeight: 56,
                        onTap: (startLoading, stopLoading, btnState) {
                          Twl.navigateTo(context, OrderDetailsScreen());
                        },
                        title: "Apply Filter"),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // ignore: unused_element
  // void _savedAddress(BuildContext context) {
  //   showModalBottomSheet<void>(
  //       context: context,
  //       isScrollControlled: true,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
  //       ),
  //       builder: (BuildContext context) {
  //         return Container(
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Container(
  //                 width: 69.36,
  //                 height: 3,
  //                 decoration: BoxDecoration(color: Color(0xFF1A1A1A)),
  //               ),
  //             ],
  //           ),
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 1.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: SearchBar(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(tWhite),
                    shape: MaterialStateProperty.all(ContinuousRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFD0DBEA),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    )),
                    padding: MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    leading: Icon(Icons.search),
                    hintText: 'Search by category',
                    constraints: BoxConstraints(minHeight: 40, maxHeight: 40),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Container(
                  height: 40,
                  decoration: ShapeDecoration(
                    color: tWhite,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: tLightBlue,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      _filterByBottomSheet(context);
                    },
                    icon: Image.asset(
                      Images.FILTER,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Twl.navigateTo(context, OrderDetailsScreen());
                      },
                      child: OderItemCard(
                          //  index: index,
                          ));
                }),
          ],
        ),
      ),
    );
  }
}
