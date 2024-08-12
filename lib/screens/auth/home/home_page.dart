import 'package:flutter/material.dart';
import 'package:flutter_aninmation_ui/themes/theme.dart';
import 'package:flutter_aninmation_ui/utils/sizings.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kscaffoldBgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: screenHeight(context) / 2,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: kbluecover2,
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Eva',
                            style: GoogleFonts.lato(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600,
                              color: kprimaryColor,
                            ),
                          ),
                          Text(
                            'You are welcome',
                            style: GoogleFonts.lato(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: kprimaryColor,
                            ),
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: kprimaryColor,
                        backgroundImage: AssetImage("assets/imgs/drink3.jpg"),

                        // CachedNetworkImage(
                        //   imageUrl: "assets/imgs/drink3.jpg",
                        // ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
