import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/theme.dart';
import '../components/my_button.dart';
import '../pages/login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: Column(
          children: [
            //Title
            SizedBox(
                height: 200,
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Text("GoGoKar",
                      style: GoogleFonts.poppins(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: c1)),
                ))),

            //Logo
            Image.asset(
              'assets/images/Option1.PNG',
              scale: 7,
            ),

            //Caption
            SizedBox(
                height: 150,
                child: Center(
                  child: Text(
                    "Share The Journey",
                    style: GoogleFonts.poppins(fontSize: 30, color: c1),
                  ),
                )),

            //Get Started button
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: MyButton(
                textColor: Colors.white,
                buttonColor: buttonColor,
                text: "Let's Ride",
                onTap: () {
                  Navigator.of(context).push(_createRoute());
                },
              ),
            )
          ],
        ));
  }
}

// Transition to next page
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
