import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'design_pattern/design_patter_sample_page.dart';
import 'overview/overview_sample_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart"),
      ),
      body: Column(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OverviewExamplePage()));
              },
              child: Text("Dart Note")),
          FlatButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DesignPatternSamplePage()));
              },
              child: Text("Design Pattern"))
        ],
      ),
    );
  }
}
