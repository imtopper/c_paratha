import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class categoryItem extends StatelessWidget {
  const categoryItem({super.key, required this.imgUrl, required this.onTap, required this.text});
  final String imgUrl;
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
      child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Color(0xffFF7622),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(imgUrl,height: 60),

                ),
    ),
    SizedBox(height: 5,),
    UiHelper.customText(text: text, height: 14, )
      ],
    );
  }
}