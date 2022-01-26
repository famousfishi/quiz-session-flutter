import 'package:flutter/material.dart';

void main(){
 runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    List<String> questions = ['What\'s your favourite color?', 'What\'s your facourite animal?', 'What\'s your facourite meal?'];
    return  MaterialApp(home: Scaffold(
      appBar: AppBar(title: const Text("Dart and Flutter"),),
      body: Column(children:
       [
          Text(questions[questionIndex]),
          ElevatedButton(onPressed: answerQuestion, child: const Text('Answer 1')),
          ElevatedButton(onPressed: ()=> print('answer 2 chosen'), child: const Text('Answer 2')),
          ElevatedButton(onPressed: (){print('answer 3 chosen');}, child: const Text('Answer 3')),
      ],)
    ),
    debugShowCheckedModeBanner: false,
    );
  }
}