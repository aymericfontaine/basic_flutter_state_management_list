import 'package:flutter/material.dart';

import 'components/counter_text.dart';
import 'components/decrement_button.dart';
import 'components/increment_button.dart';

class SetStatePage extends StatefulWidget {
  const SetStatePage({Key? key}) : super(key: key);

  @override
  State<SetStatePage> createState() => _SetStatePageState();
}

class _SetStatePageState extends State<SetStatePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    print('building SetStatePage');

    return Scaffold(
      appBar: AppBar(title: const Text('setState')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DecrementButton(onPressed: _decrementCounter),
            CounterText(counter: _counter),
            IncrementButton(onPressed: _incrementCounter),
          ],
        ),
      ),
    );
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
