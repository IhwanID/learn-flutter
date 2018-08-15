import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Flutter Bro",
    home: new PageOne(),
  ));
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: new AppBar(
        backgroundColor: Colors.red,
        leading: new Icon(Icons.home),
        title: new Center(child: new Text("Learn Flutter")),
        actions: <Widget>[new Icon(Icons.search)],
      ),
      body: new Center(
        child: new Container(
          // color: Colors.yellow,
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Icon(
                  Icons.android,
                  color: Colors.green,
                  size: 100.0,
                ),
                new Row(
                  children: <Widget>[
                    new Text('Android Studio',
                        style: new TextStyle(
                            color: Colors.white70,
                            fontFamily: "serif",
                            fontSize: 30.0)),
                    new Icon(Icons.local_phone,
                        color: Colors.green, size: 50.0),
                    new Icon(Icons.nature, color: Colors.green, size: 50.0),
                  ],
                ),
                new Icon(
                  Icons.local_pizza,
                  color: Colors.green,
                  size: 100.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
