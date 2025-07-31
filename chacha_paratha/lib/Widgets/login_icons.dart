import 'package:flutter/material.dart';

class loginIconItem extends StatelessWidget {
  const loginIconItem({super.key, required this.imgUrl, required this.onTap});
  final String imgUrl;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width -70,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300, width: 1.5),
            color: Colors.grey.shade200, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imgUrl,
              height: 24,
            ),
            SizedBox(width: 10,),
            Text("Google Sign In",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
