import 'package:flutter/material.dart';
import 'shareLift.dart';
import 'haveLift.dart';
import 'personInfo.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var shareLiftBtn = ElevatedButton(
      child:  Text('share a lift'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => shareLift()),
            );
        },
        style:ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(1, 155, 85, 157),
          minimumSize: const Size(200, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        
      );

      var haveLiftBtn = ElevatedButton(
      child:  Text('have a lift'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => haveLift()),
            );
        },
        style:ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(1, 233, 227, 234),
          fixedSize: const Size(200, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        
      );

      var homeIcon=IconButton(
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => haveLift()),
            );
        },
        icon: Icon(Icons.home),
        
      );
      
      var shareLiftIcon=IconButton(
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => shareLift()),
            );
        },
        icon: Icon(Icons.directions_car),
        
      );

      var haveLiftIcon=IconButton(
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => haveLift()),
            );
        },
        icon: Icon(Icons.hail),
        
      );
      

      var personInfoIcon=IconButton(
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => haveLift()),
            );
        },
        icon: Icon(Icons.person),
        
      );

    
    return Scaffold(
      body: Column(
         
          children:[
              haveLiftBtn,shareLiftBtn
          ]
        )
        //children:[ shareLiftBtn,haveLiftBtn]

      );


    
  }
}