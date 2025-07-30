import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Image.asset('assets/images/login.png', height: 330),
            SizedBox(
              height: 25,
            ),
            UiHelper.customText(
              text: 'Eating, drinking, enjoying',
              height: 28,
              color: Colors.black,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.customText(text: 'Log in or Sign up to explore delicious\n food and meals', height: 18),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 52,
              width: 327,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffFF7622), width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: CupertinoButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '/loginform');
                  },
                  child: Text(
                    'Log in',
                    style: TextStyle(fontSize: 16, color: Color(0xffFF7622), fontFamily: 'sans', fontWeight: FontWeight.w600, letterSpacing: 0.3),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.customButton(
                callback: () {
                  Navigator.pushNamed(context, '/signupform');
                },
                buttonname: 'Sign up'),
          ],
        ),
      ),
    );
  }
}
