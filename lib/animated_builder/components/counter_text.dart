import 'package:flutter/material.dart';

import '../counter.dart';

class CounterText extends StatelessWidget {
  const CounterText({
    Key? key,
    required this.counter,
  }) : super(key: key);

  final Counter counter;

  @override
  Widget build(BuildContext context) {
    print('building CounterText');

    return Text('${counter.value}');
  }
}
