import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({super.key, required this.imgUrl, required this.text});
  final String imgUrl;
  final String text;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
      child: Stack(
        children: [
          Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Color(0xffedf6f9),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(imgUrl,height: 100),
          
                    ),
                    Positioned(top: 8, left: 15, child: UiHelper.customText(text: text, height: 16, color: Colors.black),),],),
        ),
      ],
    );

  }
}