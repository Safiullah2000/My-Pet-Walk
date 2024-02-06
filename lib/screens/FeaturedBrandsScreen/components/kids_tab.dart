

import 'package:flutter/material.dart';

import '../../../components/cart_content.dart';
import '../../../constants/image_constants.dart';

class KidsTabBody extends StatefulWidget {
  const KidsTabBody({super.key});

  @override
  State<KidsTabBody> createState() => _KidsTabBodyState();
}

class _KidsTabBodyState extends State<KidsTabBody> {
  final List<String> imagePaths = [
    Images.KID1,
    Images.KID2,
    Images.KID3,
    Images.KID4,
    Images.KID5,
    Images.KID6,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: 
        //CartContent()
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.5,
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 0.001,
          ),
          itemCount: 6,
          itemBuilder: (BuildContext context, int index) {
            return CartContent(
            // image: imagePaths[index],
            // name: 'Louis Philippe',
            // detail: 'Colourblocked Polo Collar Golf T-shirt', 
            // price: 'Rs.1209',
            // discount:'(45% OFF)' ,
            );
          },
        ),
      ),
    );
  }
}
