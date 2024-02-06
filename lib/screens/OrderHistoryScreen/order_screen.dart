import 'package:flutter/material.dart';

import '../../components/common_app_bar.dart';

import 'components/order_screen_body.dart';

class OrderHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          //CommonAppBar(
          //   backgroundColor: tAppBarColor,
          //   title: TextWidget( text: 'Order History',
          //      fontSize: 18, color: tBlack, fontWeight: FontWeight.w700,

          //   ),
          //   elevation: 0,
          //   // leading: LeadingIcon(),
          // ),
          CommonAppBar(
        title: "Order History",
      ),
      body: SingleChildScrollView(child: OrderHistoryScreenBody()),
    );
  }
}
