import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/screens/fruity/fruity_screen.dart';
// import 'package:flutter_aninmation_ui/screens/pizza/splash_screen.dart';
// import 'package:flutter_aninmation_ui/screens/shrink_slide/shrink_slides_screen.dart';
// import 'package:flutter_aninmation_ui/screens/nike_shop/nike_shop_screen.dart';
// import 'package:flutter_aninmation_ui/screens/reviews/review_feedback_screen.dart';
// import 'package:flutter_aninmation_ui/screens/home/home_screen.dart';
// import 'package:flutter_aninmation_ui/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: HomeScreen(),
      // home: const OnBoardingScreen(),
      // home: const NickeShopScreen(),
      // home: const ReviewFeedbackScreen(),
      // home: const ShrinkSlideScreen(),
      // home: const SplashScreen(),
      home: const FruityScreen(),
    );
  }
}
