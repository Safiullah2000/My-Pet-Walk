import 'package:flutter/material.dart';
import '../../components/common_app_bar.dart';
import '../FeaturedBrandsScreen/components/floating_container.dart';
import '../PaymentScreen/payment_screen.dart';
import 'components/my_cart_screen_body.dart';


class MyCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(
          title: "My Cart",
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: MyCartScreenBody(),
            ),
            Positioned(
              bottom: 0, // Aligns the button at the bottom
              right: 0.0, // Adjust as needed
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingContainer(
                  text: "Place Order",
                  navigate: PaymentScreen(),
                  //PaymentDoneScreen(),
                ),
              ),
            ),
          ],
        )

        //  Padding(
        //   padding: const EdgeInsets.all(15.0),
        //   child: MyCartScreenBody(),
        // ),
        // floatingActionButton: Padding(
        //   padding: const EdgeInsets.all(11.0),
        //   child: FloatingContainer(navigate: PaymentDoneScreen()),
        // ),
        );
  }
}
