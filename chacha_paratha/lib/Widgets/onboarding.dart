import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class OnboardingItem extends StatelessWidget {
  const OnboardingItem({super.key, required this.imgUrl, required this.subTitle, required this.title});
  final String imgUrl;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imgUrl, height: 280),
          SizedBox(
            height: 30,
          ),
          UiHelper.customText(
            text: title,
            height: 28,
            color: Colors.black,
            fontweight: FontWeight.bold,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: UiHelper.customText(text: subTitle, height: 18),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
