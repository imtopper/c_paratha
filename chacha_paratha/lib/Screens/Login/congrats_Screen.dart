import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class CongratsScreen extends StatefulWidget {
  const CongratsScreen({super.key});

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
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
          Image.asset('assets/images/congrats.png'),
          UiHelper.customText(
            text: 'Congrats',
            height: 28,
            color: Colors.black,
            fontweight: FontWeight.bold,
          ),
          SizedBox(
            height: 10,
          ),
          UiHelper.customText(text: 'Your password changed successfully', height: 16),
          SizedBox(
            height: 20,
          ),
          UiHelper.customButton(callback: () {}, buttonname: 'Return to login')
        ],
      )),
    );
  }
}
