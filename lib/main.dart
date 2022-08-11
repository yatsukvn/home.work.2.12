import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: CounterWidget(),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State {
  int _count = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Counter'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Tap to "-" to decrement',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.zero,
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _count -= 1;
                        });
                      },
                      icon: const Icon(Icons.remove),
                      color: Colors.black,
                    ),
                  ),
                  Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.white60,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.5),
                        child: Text(
                          '$_count',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      )),
                  Ink(
                    decoration: const ShapeDecoration(
                      color: Colors.white60,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          _count += 1;
                        });
                      },
                      icon: const Icon(Icons.add),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Text(
                'Tap to "+" to increment',
                style: TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
