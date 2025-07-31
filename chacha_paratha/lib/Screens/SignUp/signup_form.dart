import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:chacha_paratha/Widgets/login_icons.dart';
import 'package:chacha_paratha/Widgets/textInputfield.dart';
import 'package:flutter/material.dart';

class signupFormScreen extends StatefulWidget {
  const signupFormScreen({super.key});

  @override
  State<signupFormScreen> createState() => _signupFormScreenState();
}

class _signupFormScreenState extends State<signupFormScreen> {
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
            TextInputField(hintText: 'John', label: 'Name'),
            SizedBox(height: 20),
            TextInputField(hintText: 'abc@gmail.com', label: 'Email'),
            SizedBox(height: 20),
            TextInputField(hintText: '123 466', label: 'Phone'),
            SizedBox(height: 20),
            TextInputField(hintText: 'Enter password', label: 'Password'),
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                SizedBox(
                  width: 32,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            UiHelper.customButton(
                callback: () {
                  Navigator.pushNamed(context, '/location');
                },
                buttonname: 'Sign in'),
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
                // SizedBox(
                //   width: 20,
                // ),
                // loginIconItem(
                //   imgUrl: 'assets/images/icons/facebook.png',
                //   onTap: () {},
                // ),
                // SizedBox(
                //   width: 20,
                // ),
                // loginIconItem(
                //   imgUrl: 'assets/images/icons/apple.png',
                //   onTap: () {},
                // )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.customText(
                  text: 'By signing up you are agree ',
                  height: 16,
                ),
                GestureDetector(
                  child: UiHelper.customText(
                    text: ' terms and conditions',
                    height: 16,
                    color: Colors.blue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
