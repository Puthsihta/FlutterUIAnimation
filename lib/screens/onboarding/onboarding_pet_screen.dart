import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_aninmation_ui/screens/onboarding/widgets/desktop.dart';
import 'package:flutter_aninmation_ui/screens/onboarding/widgets/mobile.dart';
import 'package:flutter_aninmation_ui/themes/colors.dart';
import 'package:flutter_aninmation_ui/utils/sizings.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  Widget showWidget(BoxConstraints constraints) {
    if (Sizing.isMobile(constraints)) return const MobileOnboardingScreen();
    if (Sizing.isMobile(constraints)) return const DesktopOnboardingScreen();
    return const MobileOnboardingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        systemNavigationBarColor: AppColors.black,
        statusBarColor: AppColors.black,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (kDebugMode) {
              print(constraints.maxWidth);
            }
            return AnimatedSwitcher(
              duration: const Duration(seconds: 2),
              child: showWidget(constraints),
            );
          },
        ),
      ),
    );
  }
}
