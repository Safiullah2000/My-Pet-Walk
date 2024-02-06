

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/button.dart';
import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import 'my_order_history.dart';

class OrderHistoryScreenBody extends StatelessWidget {
  OrderHistoryScreenBody({super.key});
  final List myOrders = [
    {
      'category': 'Wash & Iron',
      'itemCount': 5.0,
      'status': 'Waiting for pickup',
      'date': DateTime(2023, 8, 17),
      'image': Images.APPLE,
    },
    {
      'category': 'Ironing',
      'itemCount': 3.0,
      'status': 'Ongoing',
      'date': DateTime(2023, 8, 17),
      'image': Images.APPLE,
    },
    {
      'category': 'Wash & Iron',
      'itemCount': 10.0,
      'status': 'Delivered',
      'date': DateTime(2023, 8, 17),
      'image': Images.APPLE,
    },
    {
      'category': 'Ironing',
      'itemCount': 6.0,
      'status': 'Delivered',
      'date': DateTime(2023, 8, 17),
      'image': Images.APPLE,
    },
  ];
  @override
  Widget build(BuildContext context) {
    // List items = myOrders;
    // print(items);
    return myOrders.isEmpty
        ? EmptyOrderHistory()
        : MyOrderHistory(items: myOrders);
  }

  Center EmptyOrderHistory() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Images.OOps,
          ),
          TextWidget(text: "There are no Orders to show!", fontSize: 17.sp),
          SizedBox(
            height: 8,
          ),
          TextWidget(
              text: "Run for fresh Fab Looks",
              fontSize: 17.sp,
              color: tPrimaryColor),
          SizedBox(
            height: 35,
          ),
          GlobalButton(
            buttonHeight: 8.h,
            buttonWidth: 25.h,
            onTap: (startLoading, stopLoading, btnState) {},
            title: "Add now",
          ),
        ],
      ),
    );
  }
}
