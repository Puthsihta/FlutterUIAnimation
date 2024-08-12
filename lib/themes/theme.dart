import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/themes/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static final dark = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
  );
}

// Theme color
const Color kprimaryColor = Color(0xFF003D95);
const Color kbluecover = Color(0x77003D95);
const Color kbluecover2 = Color(0x33003D95);
const Color kscaffoldBgColor = Color(0xFFf7f7f7);
const Color ktextGrey = Color(0xFF323232);
const Color kOrange = Color(0xFFF79623);
const Color kactiveTextColor = Color(0xff3AB19B);
const Color kprimaryRed = Color(0xffEB5757);
Color kdarkcolor = const Color(0xFF191720);
const Color kgreen = Color(0xFF0E8A5C);
const Color kdarkgreen = Color(0xFF094735);
const Color kwhite = Color(0xFFFFFFFF);
const Color kyellow = Color(0xFFFFC10D);

// Text Style
const kHeadingTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

const kboldTextProfile = TextStyle(
  color: Colors.black,
  fontSize: 14.0,
  fontWeight: FontWeight.w700,
);
const ksubtitle = TextStyle(
  fontSize: 25.0,
  color: kprimaryColor,
  fontWeight: FontWeight.w500,
);

TextStyle kplaceholder = TextStyle(
    color: Colors.grey, fontSize: 14.0.sp, fontWeight: FontWeight.w500);

TextStyle kheading1 = TextStyle(
  color: Colors.white,
  fontSize: 28.0.sp,
  height: 1.2.h,
  fontFamily: "Poppins",
  fontWeight: FontWeight.w900,
);
TextStyle kheading2 = TextStyle(
  color: Colors.white,
  fontSize: 25.0.sp,
  fontFamily: "Poppins",
  fontWeight: FontWeight.w400,
);
TextStyle kpara = TextStyle(
  color: Colors.white70,
  fontSize: 15.0.sp,
  fontFamily: 'poppins',
);

ButtonStyle kbtnstyl = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF3A3941)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(10.r),
        bottomRight: Radius.circular(10.r),
      ),
      side: const BorderSide(color: Colors.transparent),
    ),
  ),
);
