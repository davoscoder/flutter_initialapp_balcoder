import 'package:flutter/material.dart';
import 'package:flutter_initialapp_balcoder/utils/widgets/custom_container.dart';

class HomePage extends StatefulWidget {
  HomePage({this.title});
  final dynamic title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  increment() {
    setState(() {
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo 1'),
        ),
        body: CustomContainer(title: 'New texto', contador: contador),
        floatingActionButton: FloatingActionButton(
            onPressed: increment, child: Icon(Icons.account_balance_wallet)));
  }
}
