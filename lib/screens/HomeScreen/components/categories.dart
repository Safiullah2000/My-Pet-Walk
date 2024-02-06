import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../components/common_app_bar.dart';
import '../../../globalFuctions/globalFunctions.dart';
import '../../FeaturedBrandsScreen/featured_brands_screen.dart';
import 'categories_view.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'Categories'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 18.0),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              height: 20.h,
              child: GestureDetector(
                  onTap: () {
                    Twl.navigateTo(context, FeaturedBrandScreen());
                  },
                  child: CategoriesView()),
            );
          },
        ),
      ),
    );
  }
}
