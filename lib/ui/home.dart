import 'package:flutter/material.dart';

GlobalKey<BodyState> bodyKey = new GlobalKey();

class Home extends StatelessWidget {
  final String title;

  Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  new Scaffold(
      backgroundColor: Colors.deepPurple,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.add),
        onPressed: () => bodyKey.currentState.addNumber(),
      ),
      bottomNavigationBar: new BottomAppBar(
        elevation: 32.0,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Icon(Icons.extension, size: 32.0, color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Icon(Icons.adb, color: Colors.blue),
            ),

          ],
        ),
      ),
      body: new Body(),
    );  
  }
}

class Body extends StatefulWidget {
  Body({Key key}) : super(key:bodyKey);

  @override
  State<StatefulWidget> createState() => new BodyState();
}

class BodyState extends State<Body> {
  int number = 0;

  addNumber() {
    setState(() { number += 100; });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text(
                "Increase the number by pressing the button",
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),

              new Text(
                "$number",
                style: new TextStyle(
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}