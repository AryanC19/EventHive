import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'events_page.dart';
import 'package:provider/provider.dart';
import 'google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'events_page.dart';
import 'package:provider/provider.dart';
import 'google_sign_in.dart';

class LoginPage extends StatelessWidget {
  static String id = "LoginPage";

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        // image: DecorationImage(
        //   image: AssetImage("assets/images/bghero.png"),
        // ),
        // color: Colors.mintgreen[4df7aa],
        color: const Color(0xFF7D9D9C),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 130,
            ),
            const Text(
              "Event Hive",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 60,
                color: const Color(0xFFEFEAE2),
              ),
            ),
            const Text(
              "Never miss another event due to a cluttered inbox",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 100, right: 100, top: 20, bottom: 20),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  // final provider =
                  //     Provider.of<GoogleSignInProvider>(context, listen: false);
                  // provider.googleLogin();
                  // GoogleSignIn().signIn();

                  Navigator.pushNamed(context, HomePage.id);
                },
                icon: const FaIcon(
                  FontAwesomeIcons.google,
                  color: Colors.red,
                ),
                label: const Text(
                  "Sign in with google",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                      fontSize: 15),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //       left: 100, right: 100, top: 20, bottom: 20),
            //   child: ElevatedButton.icon(
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: Colors.white,
            //     ),
            //     onPressed: () {
            //       Navigator.pushNamed(context, HomePage.id);
            //     },
            //     icon: const FaIcon(
            //       FontAwesomeIcons.home,
            //       color: Colors.red,
            //     ),
            //     label: const Text(
            //       "   Home page    ",
            //       style: TextStyle(
            //           color: Colors.black,
            //           fontWeight: FontWeight.w500,
            //           fontFamily: 'Poppins',
            //           fontSize: 15),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
