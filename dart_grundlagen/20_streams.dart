import 'dart:async';

void main() {
  Stream numberStream = NumberGenerator().getStream.asBroadcastStream();

  StreamSubscription sub1 = numberStream.listen((event) {
    print(event);
  });

  StreamSubscription sub2 = numberStream.listen((event) {
    print("sub2 : $event");
  });

  // sub1.pause();
  // sub1.resume();
  // sub1.cancel();

  // NumberGenerator numberGenerator = NumberGenerator();

  // StreamSubscription subscription = numberGenerator.getStream.listen((counter) {
  //   print(counter);
  // }, onError: (error) {
  //   // TODO: handle error
  //   print("error");
  // }, onDone: () {
  //   print("done!");
  // }, cancelOnError: true);
}

class NumberGenerator {
  int _counter = 0;

  StreamController<int> _controller = StreamController();

  Stream<int> get getStream => _controller.stream;

  NumberGenerator() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.sink.add(_counter);
      _counter++;
    });
  }
}
