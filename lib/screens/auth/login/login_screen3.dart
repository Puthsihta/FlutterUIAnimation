import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/themes/theme.dart';
import 'package:flutter_aninmation_ui/utils/sizings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen3 extends StatelessWidget {
  const LoginScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreen,
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              kMinorSpacer(context),
              Image.asset('assets/imgs/logo.png'),
              kMinorSpacer(context),
              const Text("Enter your mobile number"),
              kMinorSpacer(context),
              const Text("You will receive a 4 digit code to verify next"),
              const TextField(),
              RichText(
                text: const TextSpan(
                  text: 'Hello ',
                  style: TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'bold',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' world!'),
                  ],
                ),
              ),
              kMajorSpacer(context),
              SizedBox(
                width: kWidth(context) / 2.3,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Send OTP"),
                      CircleAvatar(
                        backgroundColor: kgreen,
                        child: Icon(Icons.keyboard_arrow_right, color: kwhite),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              RichText(
                text: const TextSpan(
                  text: 'Hello ',
                  style: TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'bold',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' world!'),
                  ],
                ),
              ),
              kMajorSpacer(context)
            ],
          ),
        ),
      ),
    );
  }
}
