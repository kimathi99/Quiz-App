import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // adding transparency
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            // overlay use color
            color: const Color.fromARGB(144, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            'Learn Flutter  the fun Way!!',
            style: GoogleFonts.lato(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 34,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // adding icons

          OutlinedButton.icon(
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_circle_right),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: const Text("Start Quiz")),
        ],
      ),
    );
  }
}
