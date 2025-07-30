import 'package:chacha_paratha/Screens/Cart/cart.dart';
import 'package:chacha_paratha/Screens/Home/home.dart';
import 'package:chacha_paratha/Screens/Order/order.dart';
import 'package:chacha_paratha/Screens/Profile/profile.dart';
import 'package:chacha_paratha/Screens/Search/search.dart';
import 'package:chacha_paratha/Widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  int currentIndex=0;
  List<Widget>pages=[
    HomePage(),
    OrderPage(),
    CartPage(),
    SearchPage(),
    ProfilePage(),

  ];
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: bottomNavItem(imgUrl: 'assets/images/icons/navbar_icons/home.png', ),label:"Home"),
        BottomNavigationBarItem(icon: bottomNavItem(imgUrl: 'assets/images/icons/navbar_icons/order.png', ),label:"Order"),
        BottomNavigationBarItem(icon: bottomNavItem(imgUrl: 'assets/images/icons/navbar_icons/cart.png', ),label:"Cart"),
        BottomNavigationBarItem(icon: bottomNavItem(imgUrl: 'assets/images/icons/navbar_icons/search.png', ),label:"Search"),
        BottomNavigationBarItem(icon: bottomNavItem(imgUrl: 'assets/images/icons/navbar_icons/profile-user.png', ),label:"Profile"),

      ],type: BottomNavigationBarType.fixed,currentIndex: currentIndex, onTap: (index) {
        setState(() {
          currentIndex=index;
        });
      },),

    );
  }
}