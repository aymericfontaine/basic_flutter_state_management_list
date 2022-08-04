import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  const CounterText({
    Key? key,
    required this.counter,
  }) : super(key: key);

  final int counter;

  @override
  Widget build(BuildContext context) {
    print('building CounterText');

    return Text('$counter');
  }
}
