import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../globalFuctions/globalFunctions.dart';

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.6,
      child: Container(
          width: 36,
          height: 36,
          decoration: ShapeDecoration(
            color: tWhite,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 0.50, color: tGray),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: IconButton(
              onPressed: () {
                Twl.navigateBack(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: tBlack,
                size: 30,
              ))
              ),
    );
  }
}
