import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../constants/image_constants.dart';
import '../../HomeScreen/home_screen.dart';
import '../../MyCartScreen/my_cart_screen.dart';
import '../../OrderHistoryScreen/order_screen.dart';
import '../../ProfileScreen/profile_screen.dart';

class BottomaNaviBody extends StatefulWidget {
  const BottomaNaviBody({super.key});

  @override
  State<BottomaNaviBody> createState() => _BottomaNaviBodyState();
}

class _BottomaNaviBodyState extends State<BottomaNaviBody> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomeScreen("Ali"),
    OrderHistoryScreen(),
    MyCartScreen(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 0 ? tPrimaryColor : Colors.grey,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                _selectedIndex == 0 ? Images.ICONHOME : Images.HOMEICON,
                color: tPrimaryColor,
                scale: 4,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 1 ? tPrimaryColor : Colors.grey,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                _selectedIndex == 1 ? Images.ICONHISTORY : Images.HISTORY,
                scale: 4,
              ),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 2 ? tPrimaryColor : Colors.grey,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                _selectedIndex == 2 ? Images.CART : Images.CARTICON,
                scale: 4,
              ),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                _selectedIndex == 3 ? tPrimaryColor : Colors.grey,
                BlendMode.srcIn,
              ),
              child: Image.asset(
                _selectedIndex == 3 ? Images.ICONPROFILE : Images.PROFILE,
                scale: 4,
              ),
            ),
            label: 'Profile',
          ),
        ],
        selectedItemColor: tPrimaryColor,
      ),
    );
  }
}
