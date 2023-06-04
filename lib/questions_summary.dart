import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
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
                CircleAvatar(
                  radius: 10,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String, style: const TextStyle(color: Colors.white),),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(data['user_answer'] as String, style: const TextStyle(color: Colors.white),),
                      Text(data['correct_answer'] as String, style: const TextStyle(color: Colors.white),),
                    ],
                  ),
                )
              ],
            );
          },
        ).toList()),
      ),
    );
  }
}
