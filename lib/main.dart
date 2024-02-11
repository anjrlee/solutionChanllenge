import 'package:flutter/material.dart';
import 'shareLift.dart';
import 'haveLift.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material Components',
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     var shareLiftBtn = ElevatedButton(
      child:  Text('share a lift'),
          onPressed: () {
            Navigator.push(//1
              context,
              MaterialPageRoute(builder: (context) => shareLift()),
            );
        },

    );
    var haveLiftBtn = ElevatedButton(
      child:  Text('have a lift'),
          onPressed: () {
            Navigator.push(//1
              context,
              MaterialPageRoute(builder: (context) => haveLift()),
            );
        },

    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 132, 123, 161),
        title: Text('GreenCabPool'),
      ),
      body: Column(
          children:[
              haveLiftBtn,shareLiftBtn
          ]
        )
        //children:[ shareLiftBtn,haveLiftBtn]

      );
    
  }
}

