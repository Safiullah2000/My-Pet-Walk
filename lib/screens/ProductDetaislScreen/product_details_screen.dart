
import 'package:flutter/material.dart';

import '../../components/common_app_bar.dart';
import '../TImeSlotScreen/time_slot_screen.dart';
import '../FeaturedBrandsScreen/components/floating_container.dart';
import 'components/components/product_details_screen_body.dart';


class ProductDetailsScreen extends StatelessWidget {
  
   ProductDetailsScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: "ProductDetails"),
      body: Stack(
          children: [
            SingleChildScrollView(child: ProductDetailsScreenBody()),
            Positioned(
              bottom: 0, // Aligns the button at the bottom
              right: 0.0, // Adjust as needed
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: FloatingContainer(
                  text: "Next",
                  navigate: TimeSlotScreen(),
                ),
              ),
            ),
          ],
        )
      // ProductDetailsScreenBody(),
    );
  }
}
    