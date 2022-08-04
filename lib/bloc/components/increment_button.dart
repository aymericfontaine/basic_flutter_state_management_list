import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../counter/counter_bloc.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building IncrementButton');

    return IconButton(
      onPressed: () => context.read<CounterBloc>().add(const CounterIncrement()),
      icon: const Icon(Icons.add),
    );
  }
}
