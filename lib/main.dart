import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[300],
      appBar: AppBar(
        title: Text("ASK ME ANYTHINGS"),
        backgroundColor: Colors.blue[800],
      ),
      body: Photo(),
    ),
  ));
}

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  int number = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  number = Random().nextInt(5) + 1;
                });
              },
              child: Image(
                image: AssetImage("images/ball$number.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
