import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/screens/landing_screen.dart';
import 'package:e_commerce/screens/login_screen.dart';
import 'package:e_commerce/screens/onboarding_screen.dart';
import 'package:e_commerce/screens/products_screen.dart';
import 'package:e_commerce/screens/signup_complete_screen.dart';
import 'package:e_commerce/screens/signup_screen.dart';
import 'package:e_commerce/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/landing': (context) => const LandingScreen(),
        '/signup': (context) => const SignupScreen(),
        '/signup-complete': (context) => const SignupSuccess(),
        '/onboarding': (context) => const OnBoardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/product': (context) =>  ProductScreen()
      },
    );
  }
}
