import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:chacha_paratha/Widgets/textInputfield.dart';
import 'package:flutter/material.dart';

class forgotPwdScreen extends StatefulWidget {
  const forgotPwdScreen({super.key});

  @override
  State<forgotPwdScreen> createState() => _forgotPwdScreenState();
}

class _forgotPwdScreenState extends State<forgotPwdScreen> {
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
            text: 'Forgot password',
            height: 28,
            color: Colors.black,
            fontweight: FontWeight.bold,
          ),
          SizedBox(
            height: 30,
          ),
          UiHelper.customText(text: 'Enter your phone number. We will send to you\na code to reset password', height: 16),
          SizedBox(
            height: 50,
          ),
          TextInputField(hintText: '+0 000 000', label: 'Phone'),
          SizedBox(
            height: 3,
          ),
          Row(
            children: [
              SizedBox(width: 32),
              UiHelper.customText(text: 'Firstly add country code, then phone', height: 16, color: Colors.grey),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          UiHelper.customButton(
              callback: () {
                Navigator.pushNamed(context, '/resetcode');
              },
              buttonname: 'Send code'),
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
      ),
    );
  }
}
