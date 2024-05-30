import 'package:e_commerce/domain/bloc/product_bloc.dart';
import 'package:e_commerce/presentation/product/home_screen.dart';
import 'package:e_commerce/presentation/product/login_screen.dart';
import 'package:e_commerce/presentation/product/onboarding_screen.dart';
import 'package:e_commerce/presentation/product/products_screen.dart';
import 'package:e_commerce/presentation/product/signup_complete_screen.dart';
import 'package:e_commerce/presentation/product/signup_screen.dart';
import 'package:e_commerce/presentation/product/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentation/Product/landing_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) => ProductBloc(), child:  ProductScreen(), )
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
