import 'package:flutter/material.dart';

import '../../../constants/image_constants.dart';

class HealthyView extends StatefulWidget {
  HealthyView({super.key});
  final List<String> itemImages = [
    Images.FRUITS,
    Images.FRUITS,
    Images.FRUITS,
    Images.FRUITS,
    Images.VEGETABLES,
    Images.VEGETABLES,
    Images.VEGETABLES,
    Images.VEGETABLES,
  ];
  final List<String> itemTitles = [
    'Apple',
    'Banana',
    'Orange',
    'Guava',
    'Carrot',
    'Tomato',
    'Potato',
    'Onion'
  ];

  @override
  State<HealthyView> createState() => _HealthyViewState();
}

class _HealthyViewState extends State<HealthyView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.itemImages.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey.withOpacity(0.4),
                ),
                child: ClipOval(
                  child: Image.asset(
                    widget.itemImages[index],
                    scale: 5,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Text(widget.itemTitles[index]),
            ],
          ),
        );
      },
    );
  }
}
