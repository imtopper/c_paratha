import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:chacha_paratha/Widgets/login_icons.dart';
import 'package:chacha_paratha/Widgets/textInputfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginFormScreen extends StatefulWidget {
  const loginFormScreen({super.key});

  @override
  State<loginFormScreen> createState() => _loginFormScreenState();
}

class _loginFormScreenState extends State<loginFormScreen> {
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
              height: 20,
            ),
            UiHelper.customText(
              text: 'Log in',
              height: 28,
              color: Colors.black,
              fontweight: FontWeight.bold,
            ),
            SizedBox(
              height: 30,
            ),
            TextInputField(hintText: 'abc@gmail.com', label: "Email"),
            SizedBox(
              height: 25,
            ),
            TextInputField(
              hintText: 'Enter Password',
              label: 'Password',
              // suffixIcon: Icon(Icons.password, color: Colors.grey),
            ),
            SizedBox(
              height: 60,
            ),
            UiHelper.customButton(callback: () {}, buttonname: 'Log in'),
            SizedBox(
              height: 20,
            ),
            UiHelper.customText(text: 'or', height: 16),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                loginIconItem(
                  imgUrl: 'assets/images/icons/google.png',
                  onTap: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                loginIconItem(
                  imgUrl: 'assets/images/icons/facebook.png',
                  onTap: () {},
                ),
                SizedBox(
                  width: 20,
                ),
                loginIconItem(
                  imgUrl: 'assets/images/icons/apple.png',
                  onTap: () {},
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/forgotpwd');
              },
              child: UiHelper.customText(text: 'Forgot password?', height: 16, color: Colors.blue, fontweight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
