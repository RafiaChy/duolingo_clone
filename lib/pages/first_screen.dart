import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        
        child: Column(
          children: [
          
            Draggable<String>(
              data: 'Word',

              child: Container(
                width: 70,
                height: 50,
                child: Center(child: Text('Word', style: TextStyle(color: Colors.white),)),
               decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 border: Border.all(
                 color: Colors.grey,
                 width: 2,
                 
               ),
               borderRadius: BorderRadius.circular(16),
               ),
              ), 
              feedback: Container(
                width: 70,
                height: 50,
                child: Center(child: Text('Word', style: TextStyle(color: Colors.white),)),
               decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 border: Border.all(
                 color: Colors.grey,
                 width: 2,
                 
               ),
               borderRadius: BorderRadius.circular(16),
               ),
              ),
              childWhenDragging: Container(
                width: 70,
                height: 50,
                child: Center(child: Text('Word', style: TextStyle(color: Colors.white),)),
               decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 border: Border.all(
                 color: Colors.grey,
                 width: 2,
                 
               ),
               borderRadius: BorderRadius.circular(16),
               ),
              ),
              ),
          ],
        )
        
      ),
    );
  }
}