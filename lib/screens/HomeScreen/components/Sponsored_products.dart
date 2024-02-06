import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/text_widget.dart';
import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';

class SponsoredProducts extends StatefulWidget {
  SponsoredProducts({super.key});
  final List<String> imagePaths = [
    Images.JEANS,
    Images.JEANS,
    Images.JEANS,
    Images.JEANS,
  ];

  @override
  State<SponsoredProducts> createState() => _SponsoredProductsState();
}

class _SponsoredProductsState extends State<SponsoredProducts> {
  final List titles = [
    {
      'title': 'MANGO',
      'scale': 5.0,
    },
    {
      'title': 'SPYKAR',
      'scale': 5.0,
    },
    {
      'title': 'MANGO',
      'scale': 5.0,
    },
    {
      'title': 'SPYKAR',
      'scale': 5.0,
    },
  ];

  final List subtitles = [
    {
      'title': 'JumpSuit',
    },
    {
      'title': 'Jeans',
    },
    {
      'title': 'Cotton Cardigan',
    },
    {
      'title': 'Jeans',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 40.w,
              height: 26.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                shadows: [tBoxShadow],
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 1.h,
                    ),
                    Center(
                      child: Image.asset(
                        widget.imagePaths[index],
                        scale: titles[index]["scale"],
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          titles[index]['title'],
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.favorite,
                          color: tBlack,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      subtitles[index]['title'],
                      style: TextStyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w700),
                    ),
                    // TextWidget(
                    //   text: 'JumpSuit',
                    //   fontSize: 11.sp,
                    // ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        TextWidget(
                          text: '₹',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: tPrimaryColor,
                        ),
                        TextWidget(
                          text: '4000 (3% OFF)',
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: tPrimaryColor,
                        ),
                        // SizedBox(
                        //   width: 15.w,
                        // ),
                        // Container(
                        //   width: 28,
                        //   height: 28,
                        //   decoration: ShapeDecoration(
                        //     color: tPrimaryColor,
                        //     shape: RoundedRectangleBorder(
                        //         borderRadius: BorderRadius.circular(8)),
                        //   ),
                        //   child: Center(
                        //     child: TextWidget(
                        //       text: '+',
                        //       fontSize: 12.sp,
                        //       color: tWhite,
                        //     ),
                        //   ),
                        // )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 1.0.h), // Adjust the spacing between containers
          ],
        );
      },
    );
  }
}
