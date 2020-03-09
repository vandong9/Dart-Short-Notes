import 'package:dart_overview/overview/extension_sample.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'basic_example.dart';
import 'class_sample.dart';
import 'isolate_sample.dart';
import 'mixin_sample.dart';

class OverviewExamplePage extends StatelessWidget {
  runBasicSample() {
    BasicSample().run();
  }

  runOOPSample() {
    OOPExample().run();
  }

  runMixinSample() {
    MixinExample().run();
  }

  runExtensionSample() {
    ExtensionExample().run();
  }

  IsolateSample isolateSample;
  runAsyncSample() {
    if (isolateSample == null) {
      isolateSample = IsolateSample();
    }
    isolateSample.run();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Overview Example Page")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Overview Example Page"),
            FlatButton(
                onPressed: () {
                  runMixinSample();
                },
                child: Text("Run Basic Sample")),
            FlatButton(
                onPressed: () {
                  runOOPSample();
                },
                child: Text("Run OOP Sample")),
            FlatButton(
                onPressed: () {
                  runMixinSample();
                },
                child: Text("Run Mixin Sample")),
            FlatButton(
                onPressed: () {
                  runExtensionSample();
                },
                child: Text("Run Extension Sample")),
            FlatButton(
                onPressed: () {
                  runAsyncSample();
                },
                child: Text("Run Async Sample"))
          ],
        ));
  }
}
