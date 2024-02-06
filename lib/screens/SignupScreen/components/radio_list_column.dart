import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'radio_button.dart';

class RadioListColumn extends StatelessWidget {
  late final List<String> texts = [
    'Rainbow Vistas',
    'Divine Allura',
    'Aparna Cyberzone',
    'My Home Navadweep',
    'Amrutha Valley',
    'Malaysian Township',
    'Aparna Kanopy Marigold',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 10),
      height: 70.h,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: texts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: RadioButton(
              text: texts[index],
            ),
          );
        },
      ),
    );
  }
}
