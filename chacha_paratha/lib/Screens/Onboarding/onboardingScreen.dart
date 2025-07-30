import 'package:chacha_paratha/Widgets/UiHelper.dart';
import 'package:chacha_paratha/Widgets/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  bool onLastPage = false;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 3);
                });
              },
              children: [
                OnboardingItem(
                    imgUrl: 'assets/images/Welcome.png',
                    title: 'Welcome',
                    subTitle:
                        'Welcome to Chacha Paratha - Where Purity Meets Taste!'),
                OnboardingItem(
                    imgUrl: 'assets/images/onboar1.png',
                    title: 'Pure Veg Foods',
                    subTitle:
                        'Enjoy 100% vegetarian delights,made fresh with love and tradition.'),
                OnboardingItem(
                    imgUrl: 'assets/images/onboar2.png',
                    title: 'All your favorites',
                    subTitle:
                        'Easily find your type of food craving and you’ll get delivery in wide range.'),
                OnboardingItem(
                    imgUrl: 'assets/images/onboar3.png',
                    title: 'Free delivery offers',
                    subTitle:
                        'Free delivery for new customers via Apple Pay and others payment methods.'),
              ],
            ),

            //Page Indicator
            Container(
                alignment: Alignment(0, 0.57),
                child: SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                    effect: WormEffect(
                        radius: 50,
                        dotWidth: 10.0,
                        dotHeight: 10.0,
                        dotColor: Color.fromARGB(255, 255, 200, 166),
                        activeDotColor: Color(0xffFF7622)))),

            //Next Button
            onLastPage
                ? Container(
                    alignment: Alignment(0, 0.8),
                    child: UiHelper.customButton(
                        callback: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        buttonname: 'Done'),
                  )
                : Container(
                    alignment: Alignment(0, 0.8),
                    child: UiHelper.customButton(
                        callback: () {
                          _controller.nextPage(
                              duration: Duration(microseconds: 500),
                              curve: Curves.easeInOut);
                        },
                        buttonname: 'Next'),
                  ),

            //Skip
            onLastPage
                ? Container(
                    alignment: Alignment(0, 0.9),
                  )
                : Container(
                    alignment: Alignment(0, 0.9),
                    child: GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(3);
                      },
                      child: UiHelper.customText(text: 'Skip', height: 16),
                    ),
                  ),
          ],
        ));
  }
}
