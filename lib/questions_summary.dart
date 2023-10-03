import 'package:flutter/material.dart';
import 'package:advanced_basics/custom_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  CustomText(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CustomText(data['question'] as String),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomText(data['user_answer'] as String),
                        CustomText(data['correct_answer'] as String),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
