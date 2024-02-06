import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../../../components/item_container.dart';
import '../../../components/text_widget.dart';

import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';

import '../../../globalFuctions/globalFunctions.dart';
import 'banner_view.dart';

import 'categories.dart';
import 'categories_view.dart';


class HomeScreenBody extends StatefulWidget {
  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

bool _isLoading = false;
bool get isLoading => _isLoading;

class _HomeScreenBodyState extends State<HomeScreenBody> {
  @override
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: SearchBar(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(tWhite),
                    shape: MaterialStateProperty.all(ContinuousRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: tlightBlue,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    )),
                    padding: MaterialStatePropertyAll<EdgeInsets>(
                      EdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    leading: Image.asset(
                      Images.SEARCH,
                      scale: 3.5,
                    ),
                    hintText: 'Hey! what are you looking for?',
                    hintStyle: MaterialStateProperty.resolveWith<TextStyle>(
                      (states) {
                        return TextStyle(
                            color: tBlueShade, fontWeight: FontWeight.w300);
                      },
                    ),
                    constraints: BoxConstraints(minHeight: 50, maxHeight: 50),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            BannerListView(),
            SizedBox(height: 3.0.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'Categories',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
                GestureDetector(
                  onTap: () {
                    Twl.navigateTo(context, Categories());
                  },
                  child: TextWidget(
                    text: 'See all>>',
                    fontSize: 13.sp,
                    color: tPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2.0.h),
            Container(
                height: 15.h, child: CategoriesView()),
                
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'Popular services',
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w600,
                ),
                TextWidget(
                  text: 'See all>>',
                  fontSize: 13.sp,
                  color: tPrimaryColor,
                ),
              ],
            ),
            SizedBox(height: 2.0.h),
          //   ListView.builder(
          //     shrinkWrap: true,
          //     itemBuilder: (BuildContext context, int index) { 
          //      return ServiceContainer(
          //       image: Images.SNACKS1,
          //       text: "Clean ups",
          //       name: "Earth Bites - Lamb MealRecipe");
          //    },
          //  ),
            Container(
              height: 50.h, child: ItemContainer()),
            SizedBox(height: 3.0.h),
          ],
        ),
      ),
    );
  }
}
