import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/image_constants.dart';

class FriendlyStyles extends StatelessWidget {
  final List<String> imagePaths = [
    Images.WATCHES,
    Images.JEWELLERY,
    Images.SUNGLASSES,
    Images.EARRINGS,
    Images.HANDBAGS,
  ];

  final List<String> titles = [
    'Classy Watches \nUnder ₹1199',
    'Jewellery Set \nUnder ₹999',
    'Sunglasses \nUnder ₹599',
    'EarRings \nUnder ₹299',
    'Elegant Bags \nUnder ₹399',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imagePaths.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(8.0),
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Image.asset(
                imagePaths[index],
                width: 40.w,
                height: 40.h,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                color: Colors.black.withOpacity(0.5),
                child: Text(
                  titles[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
