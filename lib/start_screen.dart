import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
           Image.asset(
            'assets/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(155, 246, 244, 244),
          ),
      
        // Opacity(
        //   opacity: 0.4,
        //   child: Image.asset(
        //     'assets/quiz-logo.png',
        //     width: 200,
        //   ),
        // ),
        const SizedBox(
          height: 90,
        ),
        const Text(
          'Learn Flutter the fun way !',
          style: TextStyle(
            color: Color.fromARGB(255, 155, 197, 234),
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: startQuiz,
          
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 36, 90, 134),
            backgroundColor: const Color.fromARGB(255, 172, 187, 198),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}
