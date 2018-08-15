import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      home: new HomePage(),
      title: "Navigation",
      routes: <String, WidgetBuilder>{
        'HomePage': (BuildContext context) => new HomePage(),
        'SecondPage': (BuildContext context) => new SecondPage(),
      }));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Go")),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.work, size: 50.0,),
          onPressed: (){
            Navigator.pushNamed(context, 'SecondPage');
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Wifi Thetring")),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.wifi_tethering, size: 50.0,),
          onPressed: (){
            Navigator.pushNamed(context, 'HomePage');
          },
        )
      ),
    );
  }
}
