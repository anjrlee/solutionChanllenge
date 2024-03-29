import 'package:flutter/material.dart';
import 'shareLift.dart';
import 'haveLift.dart';
import 'home.dart';
import 'personInfo.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    home(),
    shareLift(),
    haveLift(),
    personInfo(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 100, 100),
        title: Center(child:Text('GreenCarPool')),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 187, 38, 38),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hail),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


/*
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
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 132, 123, 161),
        title: Center(child:Text("GreenCabPool")),
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

*/