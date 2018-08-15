import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Card & Parsing",
    home: new HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Card & Parsing"),
      ),
      body: new Container(
          child: new Column(
        //full width
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new MyCard(icon: Icons.account_balance,text: "Bank BJB",color: Colors.black87),
           new MyCard(icon: Icons.airplanemode_inactive,text: "Pesawat Tempur",color: Colors.blueAccent),
            new MyCard(icon: Icons.audiotrack,text: "MTV Mania",color: Colors.yellow),
             new MyCard(icon: Icons.fiber_new,text: "Indonesia",color: Colors.green),
        ],
      )),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({this.icon, this.text, this.color});
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
          child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 75.0,
            color: color,
          ),
          new Text(
            text,
            style: new TextStyle(fontSize: 16.0),
          )
        ],
      )),
    );
  }
}
