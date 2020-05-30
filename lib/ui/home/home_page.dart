import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({this.title});
  final dynamic title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  increment(){
    setState(()
    {
      contador++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('xXx'),
        ),
        body: Column(
          children: [Text('Title'), Text(contador.toString())],
        ),floatingActionButton: FloatingActionButton(onPressed: increment,
        child: Icon(Icons.access_time),),);
  }
}
