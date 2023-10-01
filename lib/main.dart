import 'package:flutter/material.dart';
import 'package:quiz_practice/screen/home.dart';

void main (){
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: homescreen(),
    );
  }
}