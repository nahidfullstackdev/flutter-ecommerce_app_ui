import 'package:ecommerce_app/pages/cart.dart';
import 'package:ecommerce_app/pages/home.dart';
import 'package:ecommerce_app/pages/menu.dart';
import 'package:ecommerce_app/pages/profile.dart';
import 'package:ecommerce_app/utils/colors.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   const Text('Home'),
  //   const Text('Profile'),
  //   const Text('Cart'),
  //   const Text('Menu'),
  // ];

  void onTaped(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: PageView(
          controller: pageController,
          children: const [
            Home(),
            Profile(),
            Cart(),
            Menu(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt), label: 'profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: bottomNavColor,
          unselectedItemColor: Colors.grey,
          onTap: onTaped,
        ),
      ),
    );
  }
}
