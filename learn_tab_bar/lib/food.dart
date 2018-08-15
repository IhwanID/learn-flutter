import 'package:flutter/material.dart';

class Makanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(10.0),),
            new Text("Bubur Ayam", style: new TextStyle(fontSize: 20.0),),
            new Icon(Icons.fastfood, size: 50.0,),
            new Padding(padding: new EdgeInsets.all(10.0),),
            new Image(image: new NetworkImage("https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"), width: 200.0,)
          ],
        ),
      ),
    );
  }
}