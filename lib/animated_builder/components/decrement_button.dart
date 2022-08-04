import 'package:flutter/material.dart';

import '../counter.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton({
    Key? key,
    required this.counter,
  }) : super(key: key);

  final Counter counter;

  @override
  Widget build(BuildContext context) {
    print('building DecrementButton');

    return IconButton(
      onPressed: counter.decrement,
      icon: const Icon(Icons.remove),
    );
  }
}
