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
             
              children: choices.keys.map((word) => DragTarget<String>(
              builder: (BuildContext context, List<String?> accepted, List<dynamic> rejected)
             {
               return drags(word);
             }
              )).toList()..shuffle(Random(5))
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
 
}