import 'package:flutter/material.dart';

class Snack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(10.0),),
            new Text("Biskuit Jagung", style: new TextStyle(fontSize: 20.0),),
            new Icon(Icons.local_pizza, size: 50.0,),
            new Padding(padding: new EdgeInsets.all(10.0),),
          ],
        ),
      ),
    );
  }
}