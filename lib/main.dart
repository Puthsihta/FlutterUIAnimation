import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_aninmation_ui/screens/shop/shop_screen.dart';
import 'package:flutter_aninmation_ui/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_aninmation_ui/screens/auth/welcome_screen.dart';
// import 'package:flutter_aninmation_ui/themes/theme.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_aninmation_ui/routes/auth_router.dart';
// import 'package:flutter_aninmation_ui/routes/generate_route.dart';
// import 'package:flutter_aninmation_ui/screens/onboarding/onboarding_pet_screen.dart';
// import 'package:flutter_aninmation_ui/screens/fruity/fruity_screen.dart';
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
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF191720),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF191720),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   primarySwatch: Colors.blue,
      //   scaffoldBackgroundColor: kdarkcolor,
      //   floatingActionButtonTheme:
      //       const FloatingActionButtonThemeData(backgroundColor: Colors.teal),
      //   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //       selectedItemColor: Color(0xFF1A2634)),
      //   dialogBackgroundColor: Colors.teal,
      //   useMaterial3: true,
      //   bottomAppBarTheme: const BottomAppBarTheme(color: Color(0xFF1A2634)),
      // ),
      theme: ThemeData(
        primaryColorLight: AppColors.white,
        primaryColorDark: AppColors.bgColor,
        primaryColor: AppColors.orangeDark,
        cardColor: AppColors.bgCard,
        scaffoldBackgroundColor: AppColors.bgColor,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.inter(
              fontSize: 35,
              color: AppColors.black,
              fontWeight: FontWeight.w600),
          displayMedium: GoogleFonts.inter(
              fontSize: 20,
              color: AppColors.black,
              fontWeight: FontWeight.w500),
          displaySmall: GoogleFonts.inter(
              fontSize: 14,
              color: AppColors.black,
              fontWeight: FontWeight.w500),
          bodyMedium: GoogleFonts.inter(
              fontSize: 14,
              color: AppColors.black,
              fontWeight: FontWeight.w500),
        ),
        chipTheme: ChipThemeData(
          backgroundColor: AppColors.grayLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: AppColors.grayLight),
          ),
        ),
      ),
      // home: const WelcomeScreen(),
      // initialRoute: AuthRoutes.loginScreen,
      // onGenerateRoute: (settings) =>
      //     Routegenerator.generatedRoutes(settings, context),
      // home: HomeScreen(),
      // home: const OnBoardingScreen(),
      // home: const NickeShopScreen(),
      // home: const ReviewFeedbackScreen(),
      // home: const ShrinkSlideScreen(),
      // home: const SplashScreen(),
      // home: const FruityScreen(),
      // home: const OnboardingScreen(),
      home: const ShopScreen(),
    );
    // return ScreenUtilInit(
    //   designSize: Size(360, 690),
    //   minTextAdapt: true,
    //   splitScreenMode: true,
    //   builder: (_, child) {
    //     return MaterialApp(
    //       builder: (context, widget) {
    //         return MediaQuery(
    //           //Setting font does not change with system font size
    //           data: MediaQuery.of(context)
    //               .copyWith(textScaler: const TextScaler.linear(1.0)),
    //           child: widget!,
    //         );
    //       },
    //       debugShowCheckedModeBanner: false,
    //       title: 'Flutter Demo',
    //       themeMode: ThemeMode.system,
    //       theme: ThemeData.dark().copyWith(
    //         scaffoldBackgroundColor: kdarkcolor,
    //         floatingActionButtonTheme: const FloatingActionButtonThemeData(
    //             backgroundColor: Colors.teal),
    //         bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //             selectedItemColor: Color(0xFF1A2634)),
    //         dialogBackgroundColor: Colors.teal,
    //         bottomAppBarTheme:
    //             const BottomAppBarTheme(color: Color(0xFF1A2634)),
    //       ),
    //       home: const WelcomeScreen(),
    //     );
    //   },
    // );
  }
}
