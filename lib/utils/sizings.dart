import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizing {
  static double width(context) => MediaQuery.of(context).size.width;
  static double height(context) => MediaQuery.of(context).size.height;
  static top(context) => MediaQuery.viewPaddingOf(context).top;
  static bool isMobile(context) => width(context) < 480;
  static bool isTablet(context) => width(context) > 480 && width(context) < 895;
  static bool isDesktop(context) => width(context) > 895;
  static SizedBox kh10(BuildContext context) => const SizedBox(height: 10);
  static SizedBox khSpacer(double height) => SizedBox(height: height);
  static SizedBox kh20(BuildContext context) => const SizedBox(height: 20);
  static SizedBox kw20(BuildContext context) => const SizedBox(width: 20);
  static k5(context) =>
      SizedBox(height: MediaQuery.of(context).size.height * 0.005);
  static k10(context) =>
      SizedBox(height: MediaQuery.of(context).size.height * 0.01);
  static k20(context) =>
      SizedBox(height: MediaQuery.of(context).size.height * 0.03);
  static k30(context) =>
      SizedBox(height: MediaQuery.of(context).size.height * 0.06);
}

EdgeInsetsGeometry kAppPadding() => const EdgeInsets.symmetric(horizontal: 20);
EdgeInsetsGeometry kph(double size) => EdgeInsets.symmetric(horizontal: size);

EdgeInsetsGeometry kPadding(double width, double height) =>
    EdgeInsets.symmetric(horizontal: width, vertical: height);

EdgeInsetsGeometry kpv(double size) => EdgeInsets.symmetric(vertical: size);

double kWidth(context) => MediaQuery.of(context).size.width;

double kHeight(context) => MediaQuery.of(context).size.height;

Widget kh20Spacer() => const SizedBox(height: 20);
Widget kh10Spacer() => const SizedBox(height: 10);

Widget khSpacer(double height) => SizedBox(height: height);

Widget kwSpacer(double width) => SizedBox(width: width);

SizedBox kMinorSpacer(context) => SizedBox(height: 20.h);
SizedBox kMajorSpacer(context) => SizedBox(height: 50.h);

class Sizing {
  static double width(context) => MediaQuery.of(context).size.width;
  static double height(context) => MediaQuery.of(context).size.height;
  static bool isMobile(BoxConstraints constraints) =>
      constraints.maxWidth < 470;
  static bool isTablette(BoxConstraints constraints) =>
      constraints.maxWidth > 470 && constraints.maxWidth < 1200;
  static bool isDesktop(BoxConstraints constraints) =>
      constraints.maxWidth > 1200;
}

const kmainpadding = EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0);

//--------------------------- screen height & width ----------------------------
SizedBox majorSpacer(BuildContext context) {
  return SizedBox(
    height: screenHeight(context) / 20,
  );
}

SizedBox minorSpacer(BuildContext context) {
  return SizedBox(
    height: screenHeight(context) / 40,
  );
}

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}
