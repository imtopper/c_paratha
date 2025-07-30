import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class locationScreen extends StatefulWidget {
  const locationScreen({super.key});

  @override
  State<locationScreen> createState() => _locationScreenState();
}

class _locationScreenState extends State<locationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Image.asset('assets/images/location.png',height: 300,),
          Image.asset(
            'assets/images/location2.png',
            height: 300,
          ),
          SizedBox(
            height: 20,
          ),
          UiHelper.customButton(
              callback: () {
                Navigator.pushNamed(context, '/home');
              },
              buttonname: 'Access Location'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: UiHelper.customText(text: 'Chacha Paratha will access your location only while using the app', height: 16),
          )
        ],
      ),
    );
  }
}
