import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/routes/auth_router.dart';
import 'package:flutter_aninmation_ui/themes/theme.dart';
import 'package:flutter_aninmation_ui/utils/sizings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final userNameFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  final emailFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldBgColor,
      body: SizedBox(
        height: screenHeight(context),
        width: screenWidth(context),
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Container(
              height: screenHeight(context) / 2,
              decoration: const BoxDecoration(
                color: kprimaryColor,
                image: DecorationImage(
                  image: AssetImage('assets/imgs/drink3.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Container(
                height: screenHeight(context) / 2,
                decoration: const BoxDecoration(
                  color: kbluecover,
                ),
              ),
            ),
            Positioned(
              top: screenHeight(context) / 3,
              right: 0,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: kscaffoldBgColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    children: [
                      const Text(
                        "Sign up",
                        style: TextStyle(
                            color: kprimaryColor,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      majorSpacer(context),
                      Column(
                        children: [
                          SizedBox(
                            height: 50.0,
                            width: screenWidth(context),
                            child: TextFormField(
                              controller: userNameFieldController,
                              validator: (value) {
                                if (value == null ||
                                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value)) {
                                  return 'Please enter a valid email';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0,
                                  vertical: 0,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                          vertical: 15.0) +
                                      const EdgeInsets.only(left: 10),
                                  child: const FaIcon(
                                    FontAwesomeIcons.google,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                // contentPadding: EdgeInsets.all(20.0),
                                labelStyle: const TextStyle(fontSize: 12.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    color: kbluecover,
                                    width: 1.0,
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle: GoogleFonts.lato(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                          minorSpacer(context),

                          ///Password Input
                          SizedBox(
                            height: 50.0,
                            width: screenWidth(context),
                            child: TextFormField(
                              obscureText: true,
                              controller: passwordFieldController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a valid Username';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                          vertical: 15.0) +
                                      const EdgeInsets.only(left: 10),
                                  child: const FaIcon(
                                    FontAwesomeIcons.unlock,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    color: kbluecover,
                                    width: 1.0,
                                  ),
                                ),
                                hintText: "Username",
                                hintStyle: GoogleFonts.lato(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),

                          minorSpacer(context),
                          SizedBox(
                            height: 50.0,
                            width: screenWidth(context),
                            child: TextFormField(
                              obscureText: true,
                              controller: passwordFieldController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a valid password';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 0,
                                  vertical: 0,
                                ),
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                          vertical: 15.0) +
                                      const EdgeInsets.only(left: 10),
                                  child: const FaIcon(
                                    FontAwesomeIcons.unlock,
                                    size: 20,
                                    color: Colors.grey,
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                // contentPadding: EdgeInsets.all(20.0),
                                labelStyle: const TextStyle(fontSize: 13.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    color: kbluecover,
                                    width: 1.0,
                                  ),
                                ),
                                hintText: "Password",
                                hintStyle: GoogleFonts.lato(
                                  fontSize: 15.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      majorSpacer(context),
                      SizedBox(
                        width: screenWidth(context),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.lato(
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ),
                      majorSpacer(context),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                            context,
                            AuthRoutes.loginScreen,
                          );
                        },
                        child: const Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: kprimaryColor,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight(context) / 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight(context) / 8,
              // left: 0,
              // right: 0,
              child: Text(
                "Eva's Bar\nManager",
                style: GoogleFonts.lato(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
