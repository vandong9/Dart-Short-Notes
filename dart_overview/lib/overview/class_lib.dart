import 'package:flutter/foundation.dart';

class ClassFromLib {
  // public propeprty
  String _privateString = "";
  // private property
  _ClassPrivate privateClassInstane = _ClassPrivate();

  //  protected property // This not really work, it just warning
  @protected
  String protectedProperty = "";

  printMe() {
    print("_privateString: " + _privateString);
  }

  Future<String> fetchUserOrder() async {
    return Future.delayed(Duration(seconds: 4), () => 'Large Latte');
  }

  Future<void> fetchUserOrderWithError() {
    return Future.delayed(Duration(seconds: 3),
        () => throw Exception('Logout failed: user ID is invalid'));
  }

  printUserOder() async {
    Future<String> order = fetchUserOrder();
    order.then((value) {}).catchError((error) {});
    print(order);
    Future.sync(() {
      return "";
    });
  }

  readFile() {
    return "file content";
  }

  asyncFunction() async {
    var result = await readFile();
    //Future.delayed(Duration(seconds: 4), () {
    //  return "Some result";
    // });
    return result;
  }
}

class _ClassPrivate {
  String name = "_ClassPrivate";
}
