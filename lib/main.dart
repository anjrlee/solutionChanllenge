import 'package:flutter/material.dart';
import 'shareLift.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return MaterialApp(
 title: 'Material Components',
 home: homePage(),
 );
 }
}

class homePage extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFF151026),
        title: Text('title'),
    ),
    body: Padding(
        padding: EdgeInsets.all(30.0),
        child: ElevatedButton(
            child:  Text('share a lift'),
            onPressed: () {
                Navigator.push(//1
                context,
                MaterialPageRoute(builder: (context) => shareLift()),
                );
            },
           ),
        ),
      );
    }
}

