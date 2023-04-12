// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:fluttermap/answer.dart';
import 'package:fluttermap/question.dart';


void main() {
  runApp( MyApp());
}


class  MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   // throw UnimplementedError();
   return MyAppstate();
  }
}

 

class MyAppstate extends State<MyApp> {
  var questionIndex=0;
  void answerquestion(){
    setState(() {
      
    });
    questionIndex=questionIndex+1;
    print('Answer chose');
  }

  var question=[

{
  'question':'10+20',
  'answer':['30','40','50','60']
},

{
  'question':'30+40',
  'answer':['60','70','80','90']
},

{
  'question':'100+200',
  'answer':['200','300','400','500']
},

{
  'question':'150+100',
  'answer':['200','250','300','400']
},

{
  'question':'200+200',
  'answer':['400','500','600','700']
},

{
  'question':'300+200',
  'answer':['200','500','600','700']
},

{
  'question':'400+200',
  'answer':['800','500','600','700']
},
{
  'question':'500+200',
  'answer':['400','500','600','700']
}
    
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('My frist App'),
        ),
        body: Column(
          children: [
         //Text(question.elementAt(questionIndex)),
        Questions(question[questionIndex]['question']),


        ...(question[questionIndex]['answer']as List<String>).map((e) {
          return Answer(answerquestion,e);

        }).toList(),

          
          
          ],
        
        
      ) ),
       
        
    );
  }
}