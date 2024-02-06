import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../constants/image_constants.dart';

class CategoriesView extends StatelessWidget {
  final List<String> imagePaths = [
    Images.FOODS,
    Images.TOYS,
    Images.ACCESORIES1,
    Images.SUP,
    
    
  ];

  final List<String> titles = [
    'Foods',
    'Toys',
    'Accessories',
    'Supplements',
    
   
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        //physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    imagePaths[index],
                    scale: 4,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  titles[index],
                  style: TextStyle(fontSize: 11.sp),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
