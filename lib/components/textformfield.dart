import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BuildTextFeilds extends StatelessWidget {
  const BuildTextFeilds({
    super.key,
    this.hintStyle,
    this.labelStyle,
    this.validator,
    this.Controller,
    this.KeyboardType,
    this.obscureText,
    required this.hinttext,
  });
  final String hinttext;
  final hintStyle;
  final labelStyle;
  final validator;
  final Controller;
  final KeyboardType;
  final obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: Controller,
      keyboardType: KeyboardType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        filled: true,
        fillColor: tSecondaryWhite,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        hintText: hinttext,
        hintStyle: TextStyle(color: tSecondaryBlue),
        labelStyle: TextStyle(color: tSecondaryBlue),
      ),
      validator: validator,
    );
  }
}
