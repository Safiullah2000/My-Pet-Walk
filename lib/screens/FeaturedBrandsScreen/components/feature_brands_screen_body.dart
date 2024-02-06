
import 'package:Inhouse_Pets/screens/FeaturedBrandsScreen/components/tab_bar.dart';
import 'package:flutter/material.dart';



class FeaturedBrandScreenBody extends StatefulWidget {
    FeaturedBrandScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  State<FeaturedBrandScreenBody> createState() => _FeaturedBrandScreenBodyState();
}

class _FeaturedBrandScreenBodyState extends State<FeaturedBrandScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child:TabBarTabs()),
        // First Block
      ],
    );
  }
}
