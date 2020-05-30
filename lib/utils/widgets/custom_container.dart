import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({this.title, this.contador});

  final String title;
  final int contador;
  @override
  Widget build(BuildContext context) {
    double heightMedia = MediaQuery.of(context).size.height;
    double widthMedia = MediaQuery.of(context).size.width;

    return Center(
        child: Container(
      height: heightMedia * 0.5,
      width: widthMedia * 0.4,
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      child: Center(
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.tealAccent, fontSize: 50),
            ),
            Text(contador.toString(), style:TextStyle(color: Colors.deepOrangeAccent))
          ],
        ),
      ),
    ));
  }
}
