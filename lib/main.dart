import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find My Dog',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SearchDogPage(),
    );
  }
}

class SearchDogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<SearchDogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Reported Dogs"),
      ),
      body: new Container(
        padding: new EdgeInsets.all(16.0),
        child: new Column(
          children: <Widget>[
            new ListTile(
              title: new Text("Lucy"),
              onTap: () {},
            ),
            new ListTile(
              title: new Text("Hunter"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}