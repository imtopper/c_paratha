import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class resetCodeScreen extends StatefulWidget {
  const resetCodeScreen({super.key});

  @override
  State<resetCodeScreen> createState() => _resetCodeScreenState();
}

class _resetCodeScreenState extends State<resetCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(
          color: const Color.fromARGB(255, 90, 90, 90),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 7,
          ),
          UiHelper.customText(
            text: 'Sign in',
            height: 28,
            color: Colors.black,
            fontweight: FontWeight.bold,
          ),
          SizedBox(
            height: 30,
          ),
          UiHelper.customText(text: 'We sent 6-digit code to +1 234 567 890', height: 16),
          SizedBox(
            height: 50,
          ),
          SizedBox(height: 32),
          UiHelper.customText(text: "Didn't get code?", height: 16, color: Colors.grey),
          SizedBox(
            height: 15,
          ),
          UiHelper.customText(text: "Didn't get code?", height: 16, color: Colors.grey),
          SizedBox(
            height: 40,
          ),
          UiHelper.customButton(callback: () {}, buttonname: 'Confirm'),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/loginform');
            },
            child: UiHelper.customText(text: 'Return to Login', height: 16, color: Colors.blue, fontweight: FontWeight.w600),
          ),
        ],
      )),
    );
  }
}
