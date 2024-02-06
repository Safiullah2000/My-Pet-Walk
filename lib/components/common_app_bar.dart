import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'leading_icon_component.dart';
import 'text_widget.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final backgroundColor;
  final profilePage;

  const CommonAppBar(
      {Key? key, required this.title, this.backgroundColor, this.profilePage})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: tAppBarColor,
      title: TextWidget(
        text: title,
        fontSize: 18,
        color: tBlack,
        fontWeight: FontWeight.w700,
      ),
      elevation: 0,
      leading: LeadingIcon(),
    );
  }
}
