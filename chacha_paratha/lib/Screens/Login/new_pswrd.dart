import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class NewPswrdScreen extends StatefulWidget {
  const NewPswrdScreen({super.key});

  @override
  State<NewPswrdScreen> createState() => _NewPswrdScreenState();
}

class _NewPswrdScreenState extends State<NewPswrdScreen> {
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
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          UiHelper.customText(
            text: 'New password',
            height: 28,
            color: Colors.black,
            fontweight: FontWeight.bold,
          ),
          SizedBox(
            height: 30,
          ),
          UiHelper.customText(text: 'Set your a new password', height: 16),
          TextField(),
          TextField(),
          SizedBox(
            height: 30,
          ),
          UiHelper.customButton(callback: () {}, buttonname: 'Set new password'),
          SizedBox(
            height: 50,
          ),
          UiHelper.customText(text: 'Return to Login', height: 16, color: Colors.blue),
        ],
      ),
    );
  }
}
