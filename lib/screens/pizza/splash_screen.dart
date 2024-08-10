import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/components/pizza_loader.dart';
import 'package:flutter_aninmation_ui/routes/router.dart';
import 'package:flutter_aninmation_ui/screens/pizza/pizza_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool visible = true;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () async {
      setState(() => visible = false);
      await Future.delayed(const Duration(milliseconds: 300));
      AppRouter.navigate(context, const PizzaScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 500),
          opacity: 1,
          child: AnimatedScale(
            scale: visible ? 1 : 0.5,
            duration: const Duration(milliseconds: 500),
            child: const PizzaLoader(),
          ),
        ),
      ),
    );
  }
}
