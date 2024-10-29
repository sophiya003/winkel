import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:winkel/views/buyers/nav_screens/cart_screen.dart';
import 'package:winkel/views/buyers/nav_screens/category_screen.dart';
import 'package:winkel/views/buyers/nav_screens/home_screen.dart';
import 'package:winkel/views/buyers/nav_screens/profile_screen.dart';
import 'package:winkel/views/buyers/nav_screens/search_screen.dart';
import 'package:winkel/views/buyers/nav_screens/store_screen.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    StoreScreen(),
    CartScreen(),
    SearchScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed for consistent appearance
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.lightBlue, // Light blue when selected
        unselectedItemColor: Colors.black, // Black when unselected
        items: [
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(CupertinoIcons.home, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(CupertinoIcons.list_bullet, 1),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(CupertinoIcons.shopping_cart, 2),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(CupertinoIcons.cart, 3),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(CupertinoIcons.search, 4),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _buildAnimatedIcon(CupertinoIcons.person, 5),
            label: 'Profile',
          ),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }

  // Function to build the animated icon with a size change effect
  Widget _buildAnimatedIcon(IconData iconData, int index) {
    return AnimatedContainer(
      duration: Duration(
          milliseconds: 300), // Animation duration for smooth transition
      width: _selectedIndex == index ? 30 : 24, // Larger size for selected icon
      height: _selectedIndex == index ? 30 : 24,
      child: Icon(iconData,
          color: _selectedIndex == index ? Colors.lightBlue : Colors.black),
    );
  }
}
