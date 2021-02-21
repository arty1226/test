import 'dart:math';
import 'package:flutter/material.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Task',
      home: Scaffold(
        body: MainScreen()
      ),
      );
  }
}

class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen>{

  var colors = [
    Colors.blue,
    Colors.lightGreen ,
    Colors.yellow,
    Colors.grey,
    Colors.brown[400],
    Colors.blue[900],
    Colors.lime,
    Colors.green,
    Colors.pink,
    Colors.orange,
    Colors.brown,
    Colors.blueGrey,
    Colors.indigo,
    Colors.red,
  ];

  var currentColor = Colors.green;
  setColor(){
    var random = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[random];
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
      color: currentColor,
      child: Center(
        child: RaisedButton(
          color: Colors.red,
          child: Text('Hey there',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.normal,
          )
          ),
          onPressed: setColor,
        ),
      )
    );
  }
}