

import 'package:flutter/material.dart';

import '../../../components/cart_content.dart';
import '../../../constants/image_constants.dart';

class WomenTabBody extends StatefulWidget {
  const WomenTabBody({super.key});

  @override
  State<WomenTabBody> createState() => _WomenTabBodyState();
}

class _WomenTabBodyState extends State<WomenTabBody> {
  final List<String> imagePaths = [
    Images.W_SHIRT1,
    Images.W_SHIRT2,
    Images.W_SHIRT3,
    Images.W_SHIRT4,
    Images.W_SHIRT5,
    Images.W_SHIRT6,
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
