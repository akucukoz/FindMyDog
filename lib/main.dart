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
      home: Scaffold(
        body: SearchDogPage(),
      ),
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
    final List<String> dogs = <String>["Lucy", "Buddy","Baxter", "Hunter","George",
      "Luke","Teddy", "Mac","Chase", "Mickey","Oliver", "Murphy","Moose", "Zeus",
      "Sparky","Duke", "Oscar","Buster", "Sam","Champ", "Ziggy",];
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Reported Dogs"),
        actions: <Widget>[
          new IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: new Text('Icon has been clicked'),
                ));
              })
        ],
      ),
      body: new ListView(
        padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
        children: ListTile.divideTiles(
            context: context,
            tiles: dogs.map((e) => new ListTile(
              leading: FlutterLogo(),
              title: new Text(e),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(SnackBar(
                    content: Text("More button has been clicked on " + e),
                  ));
                },
              ),
              subtitle: new Text("concluding sub title"),
              onTap: () {},
            ))).toList(),
      ),
    );
  }
}