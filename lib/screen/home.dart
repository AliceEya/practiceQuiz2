import 'package:flutter/material.dart';
import 'package:quiz_practice/componets/questions.dart';
import 'package:quiz_practice/componets/title_home.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
bool toPlay = false;

void startPlay (){
  setState(() {
      toPlay = true;
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 137, 179),
      appBar: AppBar(
        title: Text('Practice sa Quiz'),
        backgroundColor: Colors.blueGrey,
      ),
      body: toPlay ? questions() : TitleHome(startPlay),
    );
  }
}

