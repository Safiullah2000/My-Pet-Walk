import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';
import '../constants/image_constants.dart';

class CustomDropdown extends StatefulWidget {
  final String hintText;
  final List<String> options;

  const CustomDropdown({
    Key? key,
    required this.hintText,
    required this.options,
  }) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  bool _isCustomDropdownOpen = false;
  TextEditingController _textEditingController = TextEditingController();

  void _toggleCustomDropdown() {
    setState(() {
      _isCustomDropdownOpen = !_isCustomDropdownOpen;
    });
  }

  void _selectOption(String option) {
    _textEditingController.text = option;
    _toggleCustomDropdown();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 6.5.h,
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            decoration: BoxDecoration(
              border: Border.all(
                  color: tLightWhite, width: 1), // Use your color here
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.hintText,
                      hintStyle: TextStyle(color: tGray),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: _toggleCustomDropdown,
                    child: Image.asset(
                      _isCustomDropdownOpen ? Images.ARROWBACK : Images.ARROW,
                      scale: 5,
                    )),
              ],
            ),
          ),
          if (_isCustomDropdownOpen)
            Container(
              margin: EdgeInsets.only(top: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: tWhite),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: widget.options.map((option) {
                  return GestureDetector(
                    onTap: () => _selectOption(option),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(option),
                    ),
                  );
                }).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
