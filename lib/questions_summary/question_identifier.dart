import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget{
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });
  final int questionIndex;
  final bool isCorrectAnswer;
  @override
  Widget build(BuildContext context){
    final questionNumber= questionIndex +1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
        ?const Color.fromARGB(255, 151, 199, 240)
        :const Color.fromARGB(255, 247, 151, 239),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        questionNumber.toString(),
        style:const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        )
      ),
    );
  }
}