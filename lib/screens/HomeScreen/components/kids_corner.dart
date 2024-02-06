import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/image_constants.dart';

class KidsCorner extends StatefulWidget {
  KidsCorner({super.key});
  final List<String> imagePaths = [
    Images.KURTA,
    Images.SHORTS,
    Images.TRIM_TOP,
    Images.FROCK,
  ];

  @override
  State<KidsCorner> createState() => _KidsCornerState();
}

class _KidsCornerState extends State<KidsCorner> {
  final List<Map<String, dynamic>> titles = [
    {
      'title': 'Kurta \n  set',
      'scale': 5.0,
    },
    {
      'title': 'Denim \n short',
      'scale': 5.0,
    },
    {
      'title': 'Trim top \n& Skirt',
      'scale': 5.0,
    },
    {
      'title': 'Stripped \n  frock',
      'scale': 4.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.imagePaths.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        widget.imagePaths[index],
                        scale: titles[index]["scale"],
                        width: 17.h,
                        height: 20.h,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                Text(
                  titles[index]['title'],
                  style: TextStyle(fontSize: 11.sp),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
