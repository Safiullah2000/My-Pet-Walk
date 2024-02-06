import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import '../../../responsive.dart';

class BannerListView extends StatefulWidget {
  @override
  _BannerListViewState createState() => _BannerListViewState();
}

class _BannerListViewState extends State<BannerListView> {
  int _currentIndex = 0;
  final List<String> bannerImages = [
    Images.BANNERS,
    Images.BANNERS,
    Images.BANNERS,
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
                return Container(
                  height: 130,
                  margin: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [tBoxShadow],
                  ),
                  width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      child: Image.asset(
                        bannerImages[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
              itemCount: bannerImages.length,
              options: CarouselOptions(
                aspectRatio: isTab(context) ? 0 : 1.8,
                viewportFraction: isTab(context) ? 0.9 : 1.0,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
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
            
          ],
        ),
        Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                bannerImages.length,
                (index) => Container(
                  width: 25,
                  height: 3,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                    color: _currentIndex == index ? tPrimaryColor : Colors.grey,
                  ),
                ),
              ),
            ),
      ],
    );
  }
}
