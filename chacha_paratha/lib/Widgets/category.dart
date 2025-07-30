import 'package:flutter/material.dart';

class categoryItem extends StatelessWidget {
  const categoryItem({super.key, required this.imgUrl, required this.onTap});
  final String imgUrl;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(imgUrl,height: 60),

                ),

      
    );
  }
}