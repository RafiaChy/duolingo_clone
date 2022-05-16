import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  final Map choices = {
    'I' : 'I',
    'am' : 'am',
    'happy' : 'happy',
  };

 bool condition = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: choices.keys.map((e) {
                return Draggable<String>(
                  data: e,
                  child: drags(e), 
                  feedback: drags(e), 
                  childWhenDragging: drags('')
                  );
              }).toList(),
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
             
              children: choices.keys.map((word) => buildTarget(word)).toList()..shuffle()
            ),
          
          ],
        ),
        ),
    );
  }

  Widget drags(e) {
    return Container(
                  color: Colors.blueGrey,
                  padding: const EdgeInsets.all(2),
                  width: 70,
                  height: 70,
                  child: Center(child: Text(e),),
                );
  }

  Widget buildTarget(String words){

    return DragTarget<String>(
              builder: (BuildContext context, List<String?> accepted, List<dynamic> rejected)
              
             {
                  return condition?   drags(words): drags(''); 
               
               },
   
             onWillAccept: (data) => data == words,
             onAccept: (data){
               condition = true;
                 print('####'+data);
                setState(() {
                 
                });
             },
             
              );
    
 
    
  }
 
}