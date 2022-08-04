import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../counter/counter_bloc.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building DecrementButton');

    return IconButton(
      onPressed: () => context.read<CounterBloc>().add(const CounterDecrement()),
      icon: const Icon(Icons.remove),
    );
  }
}
