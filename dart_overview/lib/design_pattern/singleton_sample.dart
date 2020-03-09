class Sigleton {
  String currentText = "";
  static final Sigleton _instance = Sigleton._internal();
  factory Sigleton() {
    return _instance;
  }
  Sigleton._internal();
}

class NoSingle {}

class SingletonSample {
  run() {
    var s1 = Sigleton();
    var s2 = Sigleton();
    print("is s1 and s2 the same: ${s1 == s2}");
    s1.currentText = "S1 value";
    print("currentText: ${s2.currentText}");
    s2.currentText = "S2 value";
    print("currentText: ${s1.currentText}");

    var ns1 = NoSingle();
    var ns2 = NoSingle();
    print("is ns1 and ns1 the same: ${ns1 == ns2}");
  }
}
