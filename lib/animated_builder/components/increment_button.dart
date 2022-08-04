import 'package:flutter/material.dart';

import '../counter.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({
    Key? key,
    required this.counter,
  }) : super(key: key);

  final Counter counter;

  @override
  Widget build(BuildContext context) {
    print('building IncrementButton');

    return IconButton(
      onPressed: counter.increment,
      icon: const Icon(Icons.add),
    );
  }
}
