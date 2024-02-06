import 'package:flutter/material.dart';

import '../constants/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final String hintText;
  final suffixIcon;
  final prefixIcon;

  const TextFieldContainer(
      {Key? key, required this.hintText, this.suffixIcon, this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      decoration: BoxDecoration(
        border: Border.all(color: tLight),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
