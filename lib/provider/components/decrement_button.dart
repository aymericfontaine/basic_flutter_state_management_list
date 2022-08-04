import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../counter.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building DecrementButton');

    return IconButton(
      onPressed: context.read<Counter>().decrement,
      icon: const Icon(Icons.remove),
    );
  }
}
