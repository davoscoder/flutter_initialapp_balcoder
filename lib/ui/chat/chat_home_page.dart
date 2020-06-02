import 'package:flutter/material.dart';
import 'package:flutter_initialapp_balcoder/ui/chat/chat_detail_page.dart';
import 'package:flutter_initialapp_balcoder/ui/chat/chat_item.dart';

class ChatHomePage extends StatefulWidget {
  @override
  _ChatHomePageState createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: ChatItem('David Ramirez', 'Que se dice',
              'https://storage.bponi.com/gitty/svg-draw-svg-and-android-vectordrawable-files-on-a-flutter-widget.png'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ChatDetailPage()));
          },
        )
      ],
    );
  }
}
