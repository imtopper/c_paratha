import 'package:flutter/material.dart';

class bottomNavItem extends StatelessWidget {
  const bottomNavItem({super.key, required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Image.asset(
        imgUrl,
        height: 30,
      ),
    );
  }
}