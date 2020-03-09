import 'dart:math';

import 'package:flutter/widgets.dart';

class _A {
  String propertyA = "";
  methodFromA() {
    print("methodFromA");
  }
}

abstract class InterfaceA {
  funcInterfaceA();
  funcImpletedB() {
    print("funcImpletedB");
  }

  static staticFunc() {
    print("static func from InterfaceA");
  }
}

extension A1 on _A {
  // String propertyA = ""; // Error because propertyA already exist
  methodFromA() {
    print("Extension A1 override func methodFromA");
  }

  funcExtensionA() {
    print("funcExtensionA");
  }
}

extension A2 on _A {
  methodFromA() {
    print("Extension A2 override func methodFromA");
  }

  funcExtensionA() {
    print("funcExtensionA");
  }
}

// extension on _A implements InterfaceA {} // This line is error, when extension can not extends or implements

extension ExtensionInterfaceA on InterfaceA {
  // String a = ""; // This line is error, Can not add property, but can add get/set property
  static staticFunc() {
    print("static func from extension InterfaceA");
  }

  static staticFuncFromExtension() {
    print("staticFuncFromExtension");
  }

  funcFromExtension() {
    print("InterfaceA funcFromExtension");
  }
}

class B implements InterfaceA {
  // No need override funciton from extension
  @override
  funcImpletedB() {
    return null;
  }

  @override
  funcInterfaceA() {
    return null;
  }
}

// This code from https://quickbirdstudios.com/blog/dart-extension-methods/
// The idea is can use extension to implement abstract class. so make existed class to conform interface.
// abstract class MapDrawable {}
// extension on Widget implements MapDrawable {}
// class Map {
//   void draw(Point position, int zoomLevel, MapDrawable drawable) {}
// }

class ExtensionExample {
  run() {
    _A a = _A();
    a.methodFromA();

    // funcExtensionA conflict in two extension A1, A2. A1(a) to decide which implementation
    A1(a).funcExtensionA();

    B b = B();
    b.funcFromExtension();

    InterfaceA
        .staticFunc(); // output "static func from InterfaceA" from abstract class
    // InterfaceA.staticFuncFromExtension(); // This line is error. staticFuncFromExtension added in extension
    ExtensionInterfaceA
        .staticFunc(); // output "static func from extension InterfaceA"
  }
}
