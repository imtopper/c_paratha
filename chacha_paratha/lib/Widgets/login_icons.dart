import 'package:flutter/material.dart';

class loginIconItem extends StatelessWidget {
  const loginIconItem({super.key, required this.imgUrl, required this.onTap});
  final String imgUrl;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        imgUrl,
        height: 24,
      ),
    );
  }
}
