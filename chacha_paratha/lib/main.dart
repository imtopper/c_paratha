import 'package:chacha_paratha/Screens/Access_location/location.dart';
import 'package:chacha_paratha/Screens/Home/home.dart';
import 'package:chacha_paratha/Screens/Login/forget_pswrd.dart';
import 'package:chacha_paratha/Screens/Login/login_form.dart';
import 'package:chacha_paratha/Screens/Login/login_signup.dart';
import 'package:chacha_paratha/Screens/Login/reset_code.dart';
import 'package:chacha_paratha/Screens/Onboarding/onboardingScreen.dart';
import 'package:chacha_paratha/Screens/SignUp/signup_form.dart';
import 'package:chacha_paratha/Screens/Splash/splash.dart';
import 'package:chacha_paratha/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Chacha Paratha',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffFF7622)),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        routes: {
          '/splash': (context) => const splashScreen(),
          '/onboarding': (context) => const OnboardingScreen(),
          '/login': (context) => const loginScreen(),
          '/loginform': (context) => const loginFormScreen(),
          '/signupform': (context) => const signupFormScreen(),
          '/forgotpwd': (context) => const forgotPwdScreen(),
          '/location': (context) => const locationScreen(),
          '/resetcode': (context) => const resetCodeScreen(),
          '/home': (context) => const HomePage()
        });
  }
}
