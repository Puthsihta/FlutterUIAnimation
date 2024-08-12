import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/screens/auth/login/login_screen2.dart';
import 'package:flutter_aninmation_ui/screens/auth/login/login_screen3.dart';
import 'package:flutter_aninmation_ui/themes/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
          child: Column(
            children: [
              const Image(
                image: AssetImage("assets/imgs/Build.png"),
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                'Enterprise team collaboration.',
                style: kheading1,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50.h,
              ),
              Text(
                'Bring together your files, your tools projects and people, including a new mobile and desktop application',
                style: kpara,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30.0.h,
              ),
              const Spacer(),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 140.0.w,
                        top: 0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen3(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF3A3941)),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20.r),
                                          bottomRight: Radius.circular(20.r),
                                        ),
                                        side: const BorderSide(
                                            color: Colors.transparent))),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 35.0.w, vertical: 18.0.h),
                            child: const Text(
                              'Sign in',
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // width: 100.0,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen2(),
                                ),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0.r),
                                      side: const BorderSide(
                                          color: Colors.transparent))),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 35.0.w, vertical: 18.0.h),
                              child: const Text(
                                "Register",
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
                      )
                      // top: 0,
                    ],
                  )),
              SizedBox(
                height: 30.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
