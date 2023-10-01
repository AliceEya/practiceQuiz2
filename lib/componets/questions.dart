import 'package:flutter/material.dart';
import 'package:quiz_practice/data/questions_list.dart';

class questions extends StatefulWidget {
    questions({super.key});

  @override
  State<questions> createState() => _questionsState();
}

class _questionsState extends State<questions> {
final question_lst = Question_List;
final answer_list = Answer_List;
int score = 0;
bool isDone = false;
int questionIndex = 0;

void checkAnswer(bool answer){
  print(answer);
  score += answer == answer_list[questionIndex] ? 1 : 0;
  setState((){
    if(questionIndex < question_lst.length - 1){
      questionIndex++;
    }else {
      isDone = true;
    }
});
}

Widget showQuestions(){
  return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
              Padding(
               padding:  EdgeInsets.all(12.0),
               child:  Text(
                question_lst[questionIndex],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
                ),
             ),
              const SizedBox(
                height: 15,
              ),
              Row(
                // mainAxisAlignment: 
                // MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () =>
                      checkAnswer(true),
                     child: const Text('True'),
                     ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () =>
                        checkAnswer(false), 
                        child: const Text('False'),),
                    ),
                ],
              ),
          ],
        );
}
Widget showScore(){
  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text(
        'Congrats your Score is',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 36,
        ),
        ),
      Text(
        '$score/${question_lst.length}',
          textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
        )
        ),
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: isDone ? showScore() : showQuestions(),
      ),
    );
  }
}