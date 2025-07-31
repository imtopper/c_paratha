import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFF7622),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.customText(
                    text: 'Profile',
                    height: 22,
                    fontweight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Stack(
                children: [
                  Container(
                    height: 800,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(top: 50,child: Container( height: 100, width: 100, decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.all(Radius.circular(100),),),))
                ],
              )
            ],
          ),
        ));
  }
}
