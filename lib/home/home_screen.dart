import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/AppColors.dart';
import 'package:grocery_app/Dashboard/UI/dashboard.dart';
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
  int _selectedIndex = 0;

  final List<Widget> _screen = [
    const Dashboard(),
    const MyFavourite(),
    const MyCart(),
    const MyOrder(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screen[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedIndex = 2; // Ensure Cart screen opens when FAB is tapped
          });
        },
        backgroundColor: Appcolors.appPrimary,
        shape: const CircleBorder(),
        child: const Icon(CupertinoIcons.cart, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: StylishBottomBar(
        elevation: 8,
        backgroundColor: Appcolors.appSecondary,
        items: [
          BottomBarItem(
            icon: const Icon(CupertinoIcons.house_alt),
            title: Icon(
              CupertinoIcons.house_alt_fill,
              color: Appcolors.appPrimary,
            ),
            // selectedIcon: Icon(
            //   CupertinoIcons.house_alt_fill,
            //   color: Appcolors.appPrimary,
            // ),
            selectedColor: Colors.transparent,
            unSelectedColor: Appcolors.appPrimary,
            // backgroundColor: Appcolors.appPrimary,
          ),
          BottomBarItem(
            icon: const Icon(CupertinoIcons.heart),
            title: Icon(
              CupertinoIcons.heart_fill,
              color: Appcolors.appPrimary,
            ),
            // selectedIcon: Icon(
            //   CupertinoIcons.heart_fill,
            //   color: Appcolors.appPrimary,
            // ),
            selectedColor: Colors.transparent,
            unSelectedColor: Appcolors.appPrimary,
            // backgroundColor: Appcolors.appPrimary,
          ),
          BottomBarItem(
            icon: const Icon(CupertinoIcons.cart),
            title: Icon(
              CupertinoIcons.cart_fill,
              color: Appcolors.appPrimary,
            ),
            backgroundColor: Colors.transparent,
            // selectedIcon: const Icon(CupertinoIcons.cart_fill),
          ),
          BottomBarItem(
            icon: const Icon(CupertinoIcons.square_list),
            title: Icon(
              CupertinoIcons.square_list_fill,
              color: Appcolors.appPrimary,
            ),
            // selectedIcon: Icon(
            //   CupertinoIcons.square_list_fill,
            //   color: Appcolors.appPrimary,
            // ),
            selectedColor: Colors.transparent,
            unSelectedColor: Appcolors.appPrimary,
            // backgroundColor: Appcolors.appPrimary,
          ),
          BottomBarItem(
            icon: const Icon(CupertinoIcons.person),
            title: Icon(
              CupertinoIcons.person_fill,
              color: Appcolors.appPrimary,
            ),
            // selectedIcon: Icon(
            //   CupertinoIcons.person_fill,
            //   color: Appcolors.appPrimary,
            // ),
            selectedColor: Colors.transparent,
            // backgroundColor: Appcolors.appPrimary,
            unSelectedColor: Appcolors.appPrimary,
          ),
        ],
        option: DotBarOptions(
          dotStyle: DotStyle.circle,
          // gradient: const LinearGradient(
          //   colors: [
          //     Colors.deepPurple,
          //     Colors.deepPurple,
          //   ],
          //   begin: Alignment.center,
          //   end: Alignment.topCenter,
          // ),
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
