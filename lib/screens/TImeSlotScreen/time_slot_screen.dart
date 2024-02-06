import 'package:flutter/material.dart';

import '../../components/common_app_bar.dart';
import 'components/time_slot_screen_body.dart';

class TimeSlotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: "Book time slot",
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TimeSlotScreenBody(),
      ),
    );
  }
}
