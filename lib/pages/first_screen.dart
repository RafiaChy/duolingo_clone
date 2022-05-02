import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({ Key? key }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String text = '';
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
                child: const Center(child: Text('Word', style: TextStyle(color: Colors.white),)),
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
                child: const Center(child: Text('Word', style: TextStyle(color: Colors.white),)),
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
               decoration: BoxDecoration(
                 color: Colors.grey,
                 border: Border.all(
                 color: Colors.grey,
                 width: 2,
                 
               ),
               borderRadius: BorderRadius.circular(16),
               ),
              ),
              ),

               Draggable<String>(
              data: 'am',

              child: Container(
                width: 70,
                height: 50,
                child: const Center(child: Text('am', style: TextStyle(color: Colors.white),)),
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
                child: const Center(child: Text('am', style: TextStyle(color: Colors.white),)),
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
               decoration: BoxDecoration(
                 color: Colors.grey,
                 border: Border.all(
                 color: Colors.grey,
                 width: 2,
                 
               ),
               borderRadius: BorderRadius.circular(16),
               ),
              ),
              ),
               Draggable<String>(
              data: 'Happy',

              child: Container(
                width: 70,
                height: 50,
                child: const Center(child: Text('Happy', style: TextStyle(color: Colors.white),)),
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
                child: const Center(child: Text('Happy', style: TextStyle(color: Colors.white),)),
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
               decoration: BoxDecoration(
                 color: Colors.grey,
                 border: Border.all(
                 color: Colors.grey,
                 width: 2,
                 
               ),
               borderRadius: BorderRadius.circular(16),
               ),
              ),
              ),

              DragTarget<String>(
                builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return Container(
                width: 70,
                height: 50,
                child: Center(child: Text(text, style: TextStyle(color: Colors.white),)),
               decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 border: Border.all(
                 color: Colors.grey,
                 width: 2,
                 
               ),
               borderRadius: BorderRadius.circular(16),
               ),
              );
          },
          onAccept: (String data) {
            setState(() {
              text = data ;
            });
          },
           ),

           DragTarget<String>(
                builder: (
            BuildContext context,
            List<dynamic> accepted2,
            List<dynamic> rejected2,
          ) {
            return Container(
                width: 70,
                height: 50,
                child: Center(child: Text(text, style: TextStyle(color: Colors.white),)),
               decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 border: Border.all(
                 color: Colors.grey,
                 width: 2,
                 
               ),
               borderRadius: BorderRadius.circular(16),
               ),
              );
          },
          onAccept: (String data) {
            setState(() {
              text = data ;
            });
          },
           ),

           DragTarget<String>(
                builder: (
            BuildContext context,
            List<dynamic> accepted1,
            List<dynamic> rejected1,
          ) {
            return Container(
                width: 70,
                height: 50,
                child: Center(child: Text(text, style: TextStyle(color: Colors.white),)),
               decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 border: Border.all(
                 color: Colors.grey,
                 width: 2,
                 
               ),
               borderRadius: BorderRadius.circular(16),
               ),
              );
          },
          onAccept: (String data) {
            setState(() {
              text = data ;
            });
          },
           ),
          ],
        )
        
      ),
    );
  }
}