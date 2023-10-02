import 'package:flutter/material.dart';
import 'package:advanced_basics/answerbutton.dart';
import 'package:advanced_basics/data/questions.dart';

class Questionsscreen extends StatefulWidget {
  const Questionsscreen({Key? key}) : super(key: key);

  @override
  State<Questionsscreen> createState() {
    return _QuestionsscreenState();
  }
}

class _QuestionsscreenState extends State<Questionsscreen> {
  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            // spread this as this is  a list but children
            // will bring a problem
            ...currentQuestion.answers.map((item) {
              return AnswerButton(answerText: item, onTap: () {});
            }),
          ],
        ),
      ),
    );
  }
}
