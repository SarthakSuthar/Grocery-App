import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Dashboard/dashboard.dart';
import 'package:grocery_app/MyCart/my_cart.dart';
import 'package:grocery_app/MyFavourite/my_favourite.dart';
import 'package:grocery_app/MyOrder/my_order.dart';
import 'package:grocery_app/Profile/profile.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 2;

    List<Widget> _screen = [
      const Dashboard(),
      const MyFavourite(),
      const MyCart(),
      const MyOrder(),
      const Profile(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_selectedIndex],
      bottomNavigationBar: StylishBottomBar(
        elevation: 8,
        items: [
          BottomBarItem(
            icon: const Icon(CupertinoIcons.house_alt_fill),
            title: const Text('1'),
            backgroundColor: Colors.green,
          ),
          BottomBarItem(
            icon: const Icon(CupertinoIcons.heart_fill),
            title: const Text('2'),
            backgroundColor: Colors.green,
          ),
          BottomBarItem(
            icon: const Icon(CupertinoIcons.cart_fill),
            title: const Text('3'),
            backgroundColor: Colors.green,
            // selectedIcon: const Icon(CupertinoIcons.cart_fill),
          ),
          BottomBarItem(
            icon: const Icon(CupertinoIcons.square_list_fill),
            title: const Text('4'),
            backgroundColor: Colors.green,
          ),
          BottomBarItem(
            icon: const Icon(CupertinoIcons.person_fill),
            title: const Text('5'),
            backgroundColor: Colors.green,
          ),
        ],
        option: DotBarOptions(
          dotStyle: DotStyle.circle,
          gradient: const LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.deepPurple,
            ],
            begin: Alignment.center,
            end: Alignment.topCenter,
          ),
        ),
        notchStyle: NotchStyle.circle,
        // fabLocation: StylishBarFabLocation.center,
        hasNotch: true,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
