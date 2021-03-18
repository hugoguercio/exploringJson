import 'dart:convert';

import 'package:flutter/material.dart';

import 'models/joke.dart';
import 'models/joke_base.dart';
import 'models/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploring Json',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Exploring Json'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final json = {
    "id": 1,
    "name": "Hugo Guércio",
    "username": "hugo.guercio",
    "email": "hugo.guercio@gmail.com",
    "address": {
      "country": "Brazil",
      "city": "Juiz de Fora",
      "geo": {"lat": "-21.7642", "lng": "-43.3496"}
    },
    "website": "N/A",
    "company": {"name": "Army of one", "catchPhrase": "Me and myself"},
    "locs": [
      {
        "geo": {"lat": "-21.7642", "lng": "-43.3496"}
      },
      {
        "geo": {"lat": "-21.7642", "lng": "-43.3496"}
      }
    ]
  };

  final jsonJokes = {
    "type": "success",
    "value": [
      {"id": 499, "joke": "Chuck Norris's keyboard has the Any key."},
      {
        "id": 431,
        "joke":
            "Rules of fighting: 1) Don't bring a knife to a gun fight. 2) Don't bring a gun to a Chuck Norris fight."
      }
    ]
  };

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var user = User.fromJson(widget.json);
    //var allJokes = JokeBase.fromJson(widget.jsonJokes);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          _label("id", user.id.toString()),
          _label("name", user.name),
          _label("username", user.username),
          _label("email", user.email),
          _label("country", user.address.country),
          _label("city", user.address.city),
          _label("lat", user.address.geo.lat),
          _label("lng", user.address.geo.lng),
          _label("website", user.website),
          _label("company", user.company.name),
          _label("catch phrase", user.company.catchPhrase),
          _label("Total Geo", user.locs.length.toString()),
        ],
      ),
    );
  }

  Widget _label(String label, String value) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Text("$label: "),
            Text(value),
          ],
        ),
      );
}
