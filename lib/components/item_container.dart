import 'package:Inhouse_Pets/components/service_comp.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../constants/image_constants.dart';


class ItemContainer extends StatelessWidget {
  ItemContainer({super.key});
  // final List<String> imagePaths = [
  //   Images.POLO,
  //   Images.LEVIS,
  //   Images.ADIDAS,
  // ];

  @override
  Widget build(BuildContext context) {
    return 
      ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
           padding: EdgeInsets.only(right: 2.w),
            child: ServiceContainer(image: Images.SNACKS1,text: "Clean ups",name: "Earth Bites - Lamb MealRecipe"),
          );
        },
      );
  }
}


