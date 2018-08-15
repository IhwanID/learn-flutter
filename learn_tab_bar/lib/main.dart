import 'package:flutter/material.dart';
import './food.dart' as food;
import './drink.dart' as drink;
import './snack.dart' as snack;

void main() => runApp(new MaterialApp(
      title: "Bar Image",
      home: new Home(),
    ));

class Home extends StatefulWidget {
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.indigo,
          title: new Text("Daftar Menu"),
          bottom: new TabBar(
            controller: tabController,
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.fastfood),
                text: "makanan",
              ),
              new Tab(
                icon: new Icon(Icons.local_drink),
                text: "minuman",
              ),
              new Tab(
                icon: new Icon(Icons.local_pizza),
                text: "snack",
              ),
            ],
          )),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new food.Makanan(),
          new drink.Minuman(),
          new snack.Snack()
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.indigoAccent,
        child: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.fastfood),
            ),
            new Tab(
              icon: new Icon(Icons.local_drink),
            ),
            new Tab(
              icon: new Icon(Icons.local_pizza),
            ),
          ],
        ),
      ),
    );
  }
}
