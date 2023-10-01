import 'package:flutter/material.dart';

class TitleHome extends StatelessWidget {
   TitleHome(this.startPlay_call,{
    super.key,
  });

VoidCallback
startPlay_call;



  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/quiz.png'),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Trivia Quiz',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.normal,
          ),
          ),
         const  SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 5,
              ),
              onPressed: startPlay_call,
            child: const Text(
              'Lets Play',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                
              ),),
            ),
          ),
      ],
    );
  }
}