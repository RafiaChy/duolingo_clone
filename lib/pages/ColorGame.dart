import 'dart:math';

import 'package:flutter/material.dart';

class ColorGame extends StatefulWidget {
  const ColorGame({ Key? key }) : super(key: key);

  @override
  _ColorGameState createState() => _ColorGameState();
}

class _ColorGameState extends State<ColorGame> {
  final Map<String, bool> score = {};

  final Map choices = {
    'a' : 'I',
    'b' : 'am',
    'c' : 'happy',
  };

  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('score ${score.length} / 6'),
      backgroundColor: Colors.pink,
      
    ),
    floatingActionButton: FloatingActionButton(onPressed: (){setState(() {
      score.clear();
      seed++;
    });}, child: Icon(Icons.refresh),),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         // crossAxisAlignment: CrossAxisAlignment.end,
          children: choices.keys.map((e) {return
           Draggable(data: e, child: Words(word: e,), feedback: Words(word: e,), childWhenDragging:Words(word: ''));
           }).toList()
        ),
        
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: choices.keys.map((e) => buildTarget(e)).toList(),
        )
      ],
    ),
    );
  }

  Widget  buildTarget( String word){
  return DragTarget<String>(builder: 
  (BuildContext context, List<String?> accepted, rejected){
    if(score[word]== true){
      return Container(
        color:  Colors.pink,
        child: Text('Correct'),
        alignment: Alignment.center,
        height: 80,
        width: 200,
      );
    }
    else{
      return Container(
        color: Colors.blueGrey,
        height: 80,
        width: 200,
      );
    }
  },
  onAccept: (data){
    print(data);
    setState(() {
    score[word] = true;
  });},
  onWillAccept: (data) => data == word,
  );
}
}



class Words extends StatelessWidget {
  const Words({
    Key? key,
    required this.word,
  }) : super(key: key);
  final String word; 

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.amber,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        padding: EdgeInsets.all(10),
        child: Text(
          word,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
