import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(new MaterialApp(
    title: "Test Json",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List dataJSON;

  Future<String> getData() async {
    http.Response result = await http.get(
        Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
        headers: {"Accept": "application/json"});

    this.setState(() {
      dataJSON = JSON.decode(result.body);
    });
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text(
        "Test Json",
      )),
      body: new ListView.builder(
          itemCount: dataJSON == null ? 0 : dataJSON.length,
          itemBuilder: (context, i) {
            return new Container(
              padding: new EdgeInsets.all(10.0),
             child: new Card(
               child: new Container(
                 padding: new EdgeInsets.all(10.0),
                  child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  dataJSON[i]['title'],
                ),
                new Text(dataJSON[i]['body'],
                    style: new TextStyle(fontSize: 12.0, color: Colors.blueGrey),),
              ],
            )
               ),
               
            )
            );

            
          }),
    );
  }
}
