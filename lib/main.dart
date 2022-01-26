import 'package:flutter/material.dart';

void main(){
 runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    print('Answer 1');
  }

   void answerQuestionTwo() {
    print('Answer 2');
  }

   void answerQuestionThree() {
    print('Answer 3');
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = ['What\'s your favourite color?', 'What\'s your facourite animal?'];
    return  MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text("Dart and Flutter"),),
      body: Column(children:
       [
         const Text('The questions!'),
          ElevatedButton(onPressed: answerQuestion, child: const Text('Answer 1')),
          ElevatedButton(onPressed: answerQuestionTwo, child: const Text('Answer 2')),
          ElevatedButton(onPressed: answerQuestionThree, child: const Text('Answer 3')),
      ],)
    ),
    debugShowCheckedModeBanner: false,
    );
  }

  
}