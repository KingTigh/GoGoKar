import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/theme.dart';
import '../components/text_box.dart';
import '../components/my_button.dart';
import 'registeration_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonColor,
      ),
      backgroundColor: background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
              child: Column(children: [
            const SizedBox(height: 50),

            // logo
            const Icon(
              Icons.lock_outlined,
              size: 100,
            ),

            const SizedBox(height: 50),

            // Welcome message
            Text("Welcome back! Please Sign in Below.",
                style: GoogleFonts.poppins(color: c1, fontSize: 18)),

            // Username TextField
            MyTextField(
              hintText: "Username",
              obscureText: false,
              controller: usernameController,
            ),

            // Password Feld
            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: passwordController,
            ),

            const SizedBox(
              height: 20,
            ),

            // Sign in button
            MyButton(
                textColor: Colors.white,
                onTap: () {},
                text: "Sign In              ",
                buttonColor: Colors.black),

            // Register Option
            const SizedBox(height: 40),
            Text(
              "New to GoGoKar?",
              style: GoogleFonts.poppins(color: c1, fontSize: 15),
            ),
            MyButton(
              textColor: c1,
              buttonColor: background,
              text: "                     Register Now",
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
            )
          ])),
        ),
      ),
    );
  }
}

// Transition to next page
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => RegistrationPage(),
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
