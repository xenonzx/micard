import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          "this is dakhakhny",
        ),
      ),
      body: Center(
        child: Image(
          image:
              NetworkImage('https://source.unsplash.com/Y-joaXX7XCQ/1600x900'),
        ),
      ),
    ),
  ));
}
