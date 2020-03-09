import 'package:flutter/material.dart';

import 'singleton_sample.dart';

class DesignPatternSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Column(
        children: <Widget>[
          FlatButton(
              onPressed: () {
                SingletonSample().run();
              },
              child: Text("Singleton"))
        ],
      ),
    );
  }
}
