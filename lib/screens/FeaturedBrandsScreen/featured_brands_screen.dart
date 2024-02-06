import 'package:flutter/material.dart';

import '../../components/common_app_bar.dart';
import '../TImeSlotScreen/time_slot_screen.dart';
import 'components/floating_container.dart';
import 'components/feature_brands_screen_body.dart';

class FeaturedBrandScreen extends StatefulWidget {
  FeaturedBrandScreen({
    Key? key,
  }) : super(key: key);
  

  @override
  State<FeaturedBrandScreen> createState() => _FeaturedBrandScreenState();
}

class _FeaturedBrandScreenState extends State<FeaturedBrandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CommonAppBar(
          title: "Services",
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              FeaturedBrandScreenBody(),
              Positioned(
                bottom: 0, // Aligns the button at the bottom
                right: 0.0,
                left: 0, // Adjust as needed
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: FloatingContainer(
                    text: "Next",
                    navigate: TimeSlotScreen(),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
