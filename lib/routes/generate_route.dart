import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/routes/auth_router.dart';
import 'package:flutter_aninmation_ui/screens/auth/home/home_page.dart';
import 'package:flutter_aninmation_ui/screens/auth/login/login_screen.dart';
import 'package:flutter_aninmation_ui/screens/auth/main_screen.dart';
import 'package:flutter_aninmation_ui/screens/auth/signup/signup_screen.dart';

class Routegenerator {
  static Route<dynamic> generatedRoutes(RouteSettings settings, context) {
    switch (settings.name) {
      case (AuthRoutes.loginScreen):
        return MaterialPageRoute(builder: (context) => const LoginScreen());

      case (AuthRoutes.createAccount):
        return MaterialPageRoute(builder: (context) => const SignUpScreen());

      case (AuthRoutes.mainPage):
        return MaterialPageRoute(builder: (context) => const MainPage());

      case (AuthRoutes.homeScreen):
        return MaterialPageRoute(builder: (context) => const HomePage());

      default:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
    }
  }
}
