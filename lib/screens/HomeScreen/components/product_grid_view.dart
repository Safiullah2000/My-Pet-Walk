import 'package:flutter/material.dart';

import '../../../components/product_container.dart';
import '../../../constants/image_constants.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../FeaturedBrandsScreen/featured_brands_screen.dart';

class ProductGridView extends StatelessWidget {
  final List<Map<String, dynamic>> imageInfo = [
    {
      'imagePath': Images.APPLE,
      'scale': 3.0,
    },
    {
      'imagePath': Images.APPLE,
      'scale': 2.0,
    },
    {
      'imagePath': Images.APPLE,
      'scale': 2.0,
    },
    {
      'imagePath': Images.DRESS,
      'scale': 3.8,
    },
  ];

  ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 1.0,
      ),
      itemCount: 4,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (BuildContext context, int index) {
        final imagePath = imageInfo[index]['imagePath'];
        final scale = imageInfo[index]['scale'];
        return GestureDetector(
          onTap: () {
            Twl.navigateTo(context, FeaturedBrandScreen());
          },
          child: ProductContainer(
            imagePath: imagePath,
            imageScale: scale,
          ),
        );
      },
    );
  }
}
