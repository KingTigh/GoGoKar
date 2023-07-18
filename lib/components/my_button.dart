import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/components/theme.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;
  final Color buttonColor;
  const MyButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: text,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: c1,
                  )),
              WidgetSpan(
                child: Padding(
                  padding: const EdgeInsets.only(left: 150.0),
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    size: 17,
                    color: c1,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
