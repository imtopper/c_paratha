import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.pushReplacementNamed(context, '/onboarding');
    // });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Logo.png", height: 20,),

            SizedBox(
              height: 10,
            ),
            UiHelper.customText(
              text: "Chacha Paratha",
              height: 24,
              color: Colors.black,
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 4),
            UiHelper.customText(text: "Since 1969", height: 16),
          ],
        ),
      ),
    );
  }
}
