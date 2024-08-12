import 'package:flutter/material.dart';

class AppSizing {
  static double width(context) => MediaQuery.of(context).size.width;
  static double height(context) => MediaQuery.of(context).size.height;
  static bool isMobile(context) => width(context) < 480;
  static bool isTablet(context) => width(context) > 480 && width(context) < 895;
  static bool isDesktop(context) => width(context) > 895;
  static SizedBox kh10(BuildContext context) => const SizedBox(height: 10);
  static SizedBox khSpacer(double height) => SizedBox(height: height);
  static SizedBox kh20(BuildContext context) => const SizedBox(height: 20);
  static SizedBox kw20(BuildContext context) => const SizedBox(width: 20);
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
