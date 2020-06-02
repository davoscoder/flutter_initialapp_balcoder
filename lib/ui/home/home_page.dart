import 'package:flutter/material.dart';
import 'package:flutter_initialapp_balcoder/ui/chat/chat_home_page.dart';
import 'package:flutter_initialapp_balcoder/utils/widgets/custom_container.dart';

class HomePage extends StatefulWidget {
  HomePage({this.title});
  final dynamic title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  int _tabIndex;
  int contador = 0;

  @override
  void initState() {
    super.initState();

    _tabIndex = 0;
    _tabController =
        new TabController(length: 3, initialIndex: _tabIndex, vsync: this);
  }

  increment() {
    setState(() {
      contador++;
      _tabController.animateTo(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    var greenAccent = Colors.green;
    return Scaffold(
        appBar: AppBar(
          title: Text('ChatBar'),
          bottom: TabBar(controller: _tabController, tabs: [
            Tab(child: Text('Chat')),
            Tab(
              child: Text('Estado'),
            ),
            Tab(
              child: Text('Llamadas'),
            )
          ]),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [ChatHomePage(),
            CustomContainer(title: 'Estados', contador: contador),
            CustomContainer(title: 'Llamadas', contador: contador),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: increment,
          backgroundColor: greenAccent,
          child: Icon(Icons.message),
        ));
  }
}
