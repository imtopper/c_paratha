import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key, required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Image.asset(imgUrl),
    );
  }
}