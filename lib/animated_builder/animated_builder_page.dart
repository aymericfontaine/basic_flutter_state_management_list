import 'package:flutter/material.dart';

import 'components/counter_text.dart';
import 'components/decrement_button.dart';
import 'components/increment_button.dart';
import 'counter.dart';

class AnimatedBuilderPage extends StatefulWidget {
  const AnimatedBuilderPage({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderPage> createState() => _AnimatedBuilderPageState();
}

class _AnimatedBuilderPageState extends State<AnimatedBuilderPage> {
  late final Counter _counter;

  @override
  void initState() {
    super.initState();

    _counter = Counter();
  }

  @override
  Widget build(BuildContext context) {
    print('building AnimatedBuilderPage');

    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedBuilder')),
      body: Center(
        child: AnimatedBuilder(
          animation: _counter,
          builder: (context, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                DecrementButton(counter: _counter),
                CounterText(counter: _counter),
                IncrementButton(counter: _counter),
              ],
            );
          },
        ),
      ),
    );
  }
}
