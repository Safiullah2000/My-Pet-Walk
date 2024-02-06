import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Image.asset(
          Images.SALOON_LOGO,
          scale: 2,
        ),
      ),
    );
  }
}
