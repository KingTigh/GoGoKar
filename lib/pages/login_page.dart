import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/theme.dart';
import '../components/my_button.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

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
                    child: Text("GoGoKar",
                        style: GoogleFonts.poppins(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: c1)))),

            //Logo
            Icon(
              Icons.shield,
              size: 150,
              color: c1,
            ),

            //Caption
            SizedBox(
                height: 200,
                child: Center(
                  child: Text(
                    "Share The Journey",
                    style: GoogleFonts.poppins(fontSize: 30, color: c1),
                  ),
                )),

            //Get Started button
            const MyButton()
          ],
        ));
  }
}
