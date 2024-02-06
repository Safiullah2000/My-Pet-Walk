import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants/constants.dart';
import '../../../../constants/image_constants.dart';
import '../../../../responsive.dart';

class ProductImageScroll extends StatefulWidget {
  
  @override
  _ProductImageScrollState createState() => _ProductImageScrollState();
  
  ProductImageScroll();
}

class _ProductImageScrollState extends State<ProductImageScroll> {
  int _currentIndex = 0;
  final List<String> bannerImages = [
    Images.SNACKS1,
    Images.SNACKS1,
    Images.SNACKS1,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CarouselSlider.builder(
              itemBuilder: (context, index, realIndex) {
                return Image.asset(
                  bannerImages[index],
                  
                  width: 60.w,
                  height: 90.h,
                  
                );
              },
              itemCount: bannerImages.length,
              options: CarouselOptions(
                aspectRatio: isTab(context) ? 0 : 1.8,
                viewportFraction: isTab(context) ? 0.9 : 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: false,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                bannerImages.length,
                (index) => Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? tPrimaryColor : Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
