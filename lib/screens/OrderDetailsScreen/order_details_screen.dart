import 'package:flutter/material.dart';
import '../../components/leading_icon_component.dart';
import '../../components/text_widget.dart';
import '../../constants/constants.dart';
import 'components/order_details_screen_body.dart';

class OrderDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tAppBarColor,
        title: TextWidget(
          text: 'Order Details',
          fontSize: 18,
          color: tBlack,
          fontWeight: FontWeight.w700,
        ),
        elevation: 0,
        leading: LeadingIcon(),
      ),
      // CommonAppBar(
      //   title: 'Order Details',
      // ),
      body: OrderDetailsScreenBody(),
    );
  }
}
