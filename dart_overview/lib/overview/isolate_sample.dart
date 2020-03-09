import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';

Isolate isolate;
ReceivePort receivePort;
SendPort sendPort;
void createNewIsolate() async {
  receivePort = ReceivePort();
  await Isolate.spawn(isolateMain, receivePort.sendPort).then((_isolate) {
    isolate = _isolate;
    print('isolate: $isolate');

    receivePort.listen((messages) {
      print('new message from ISOLATE $messages');

      if (messages == "run") {
        print("make start");
        shouldStop = false;
        count = 0;
      } else if (messages == "stop") {
        print("make stop");
        shouldStop = true;
        count = 0;
      }
    });
  });
}

String randomString(int number) {
  return "randomString ${Random().nextInt(number)}";
}

void isolateMain(SendPort sendPort) {
  funcMakeThreadBusy();

  // int i = 0;
  // Timer.periodic(new Duration(seconds: 2), (Timer t) {
  //   if (i == 5) exit(0);
  //   i += 1;

  //   sendPort.send(
  //       'RANDOM STRING: ${randomString(10)}; RANDOM INTEGER: ${randomString(100)}');
  // });
}

var shouldStop = true;
var count = 0;
funcMakeThreadBusy() {
  int i = 1;
  var max = 100000000;
  while (i < max && shouldStop == false) {
    i++;
    if (i == max) {
      i = 1;
      count++;
      print("count loop: $count");
    }
  }
}

Future funcCallBusyThread() async {
  Future.delayed(Duration(seconds: 1), () {
    // funcMakeThreadBusy();
  });
}

class IsolateSample {
  run() {
    print("running dart program");
    if (isolate == null) {
      createNewIsolate(); // using isolate to execute funcCallBusyThread to prevent stuck app
    }
    // shouldStop = !shouldStop;
    receivePort.sendPort.send(shouldStop ? "run" : "stop");
    // funcCallBusyThread(); // if execute this, app will stuck event it use async and future
  }
}
