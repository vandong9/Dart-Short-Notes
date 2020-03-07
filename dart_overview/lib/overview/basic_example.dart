import 'dart:collection';

class BasicSample {
  run() {
    num n = 10;
    n = 10.10;
    int a = 10;
    // a = 10.1;  error because assign double to int variable
    var b = 10; // refer b is int
    // b = ""; b was refer as int, can not assign other value type for it
    dynamic c = 10;
    c = "";
    Function func = () {};
    List list = [];
    list[0] = 1;
    list[1] = "";
    Set set = Set();
    Map m = Map();
    m["a"] = 12;
    m[1] = 11;
    Queue q = Queue();

    // Collection
    printList();
    printSet();
    printMap();
  }

  printList() {
    List logTypes = new List();
    // List<String> logTypes = new List();

    logTypes.add("WARNING");
    logTypes.add("ERROR");
    logTypes.add("INFO");

    // iterating across list
    for (String type in logTypes) {
      print(type);
    }
  }

  printSet() {
    Set numberSet = new Set();
    // Set<int> numberSet = new Set();
    // or init set form array
    //numberSet = new Set.from([12,13,14]);

    numberSet.add(100);
    numberSet.add(20);
    numberSet.add(5);
    numberSet.add(60);
    numberSet.add(70);

    for (var no in numberSet) {
      print(no);
    }
  }

  printMap() {
    var details = new Map();
    details['Usrname'] = 'admin';
    details['Password'] = 'admin@123';
    print(details);
  }

  printQueue() {
    Queue numQ = new Queue();
    numQ.addAll([100, 200, 300]);
    Iterator i = numQ.iterator;

    while (i.moveNext()) {
      print(i.current);
    }
  }
}
