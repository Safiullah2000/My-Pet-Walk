import 'package:Inhouse_Pets/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../constants/constants.dart';

class RadioButtonRow extends StatefulWidget {
  const RadioButtonRow({super.key, this.image, this.text});
  final image;
  final text;

  @override
  State<RadioButtonRow> createState() => _RadioButtonRowState();
}

class _RadioButtonRowState extends State<RadioButtonRow> {
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(widget.image,scale: 5,), // Replace 'your_image.png' with your image asset path
         SizedBox(width: 4.w), // Add some spacing between the image and text
        TextWidget(text: widget.text, fontSize: 12.sp,fontWeight: FontWeight.w500,),
        Spacer(), // This will push the radio button to the end of the row
        Radio(
          value: 1,
          groupValue: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
          },
          activeColor: tPrimaryColor
        ),
      ],
    );
  }
}