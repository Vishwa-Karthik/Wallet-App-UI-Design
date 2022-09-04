import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String iconImage;
  final String buttonText;

  const MyButton(
      {super.key, required this.iconImage, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          height: 90,
          decoration: BoxDecoration(
              color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurple.shade400,
                  blurRadius: 40,
                  spreadRadius: 2,
                ),
              ]),
          child: Center(child: Image.asset(iconImage)),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          buttonText,
          style: GoogleFonts.actor(
              textStyle: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20, letterSpacing: 2)),
        )
      ],
    );
  }
}
