// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';

// import '../../../components/text_widget.dart';
// import '../../../constants/constants.dart';
// import 'time_slot_screen_body.dart';

// class TimeSlotTabBar extends StatefulWidget {
//   const TimeSlotTabBar({super.key});

//   @override
//   State<TimeSlotTabBar> createState() => _TimeSlotTabBarState();
// }

// class _TimeSlotTabBarState extends State<TimeSlotTabBar>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;
//   int _currentIndex = 0;
//   void initState() {
//     tabController = TabController(length: 2, vsync: this);

//     super.initState();
//   }

//   void _itemTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       slivers: <Widget>[
//         SliverToBoxAdapter(
//           child: Center(
//             child: Container(
//               // width: 0.7 * _screen_width,
//               child: TabBar(
//                 indicatorPadding: EdgeInsets.zero,
//                 controller: tabController,
//                 unselectedLabelColor: tPrimaryColor,
//                 labelPadding: EdgeInsets.zero,
//                 indicator: _currentIndex == 0
//                     ? BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                         color: tPrimaryColor,
//                       )
//                     : BoxDecoration(
//                         borderRadius: BorderRadius.circular(8),
//                         color: tPrimaryColor,
//                       ),
//                 onTap: (value) {
//                   _itemTapped(value);
//                 },
//                 tabs: [
//                   Tab(
//                       child:
//                           // padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
//                           TextWidget(text: "Pickup’s", fontSize: 15.sp)),
//                   Tab(child: TextWidget(text: "Delivery’s", fontSize: 15.sp)),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         SliverFillRemaining(
//           child: TabBarView(
//             controller: tabController,
//             children: [
//               Container(child: TimeSlotScreenBody()),
//               Container(child: TimeSlotScreenBody())
//             ],
            
//           ),
//         )
//       ],
//     );
//   }
// }
