import 'package:flutter/material.dart';

class Minuman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(10.0),),
            new Text("Beras Kencur", style: new TextStyle(fontSize: 20.0),),
            new Icon(Icons.local_drink, size: 50.0,),
            new Padding(padding: new EdgeInsets.all(10.0),),
            new Image.asset("img/majalengkadev.jpg", width: 200.0,)
          ],
        ),
      ),
    );
  }
}