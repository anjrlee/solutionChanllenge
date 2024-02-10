import 'package:flutter/material.dart';
class shareLift extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
 return Scaffold(
 appBar: AppBar(
 title: Text('Share a Lift'),
 ),
 body: Padding(
 padding: EdgeInsets.all(30.0),
 child: ElevatedButton(
 child: Text('back'),
 onPressed: () {
 Navigator.pop(context);//2
 }),
 ),
 );
 }
}

