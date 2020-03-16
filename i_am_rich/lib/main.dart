import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('I am Rich'),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
              'https://pbs.twimg.com/profile_images/698142756128985088/sR34XtdN_400x400.jpg'),
        ),
      ),
    )),
  );
}
