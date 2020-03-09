import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'class_lib.dart';

class SubClassFromLib extends ClassFromLib {
  // _ClassPrivate _classPrivate = _ClassPrivate(); // This line is error, because _ClassPrivate is private class in class_lib.dart
  printMe() {
    // _privateString = ""; // This line is error, because _privateString is private property of ClassFromLib
    privateClassInstane.name = "";
    // _printClassFromLib(); // This line is error, because _printClassFromLib is private of ClassFromLib
  }
}

class MyClass {
  /// Variable and constant
  final String finalVariableAtDefine = "";
  final String finalVariableAtConstructor;
  String get getOnlyProperty => "";
  String _name;

  /// getter/setter
  // getter name
  String get name {
    return _name;
  }

  // setter name
  set name(String value) {
    _name = value;
  }

  funcAccessProtectedProperty() {
    ClassFromLib classFromLib = ClassFromLib();
    classFromLib.protectedProperty = "protectedProperty new value ";
    print("classFromLib.protectedProperty");
    print(classFromLib.protectedProperty);
  }

  // Constructor
  MyClass(this.finalVariableAtConstructor) {
    print("default init");
  }

  MyClass.customInit(this.finalVariableAtConstructor) {
    print("customInit");
  }

  MyClass.fromMyClass(String stringValue)
      : finalVariableAtConstructor = stringValue {
    print("fromMyClass");
  }

  /// Functions
  // option param index
  int funcOptionalIndex(int a, [int b, int c]) {
    return a + b + c;
  }

  // optional param name
  int funcOptionalName(int a, {int b, int c}) {
    return a + b + c;
  }

  // param with default value
  int funcDefaultParamValue(int a, {int b = 1, int c = 1}) {
    return a + b + c;
  }

  // lamda
  int lamdaFunction(int a, int b) => a * b;

  callFunction() {
    print(funcOptionalIndex(1, 2)); // missing c
    print(funcOptionalName(1, c: 3)); // missing b
    print(lamdaFunction(1, 2)); // default c
  }
}

///
//  Inherited
///
class BaseA {
  String _privateString = "private value";

  printMe() {
    print("BaseA" + _privateString);
  }
}

class BaseB {
  String myString;

  printMe() {
    print("BaseB");
  }

  printInterface() {
    print("printInterfaceB");
  }
}

abstract class BaseC {
  printMe() {
    print("BaseC");
  }

  printInterface() {
    print("printInterfaceC");
  }

  printFromC() {
    print("From C");
  }
}

class SubClassA extends BaseA implements BaseB, BaseC {
  printMeA() {
    printMe();
    _privateString = "";
  }

  @override
  printMe() {
    super.printMe();
  }

  @override
  printInterface() {
    return null;
  }

  @override
  printFromC() {
    return null;
  }

  @override
  String myString;
}

class Player {
  final String name;
  final String color;

  Player(this.name, this.color);

  Player.fromPlayer(Player another)
      : color = another.color,
        name = another.name;
}

class OOPExample {
  run() {}
}
