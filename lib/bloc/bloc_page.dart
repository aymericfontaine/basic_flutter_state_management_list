import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/counter_text.dart';
import 'components/decrement_button.dart';
import 'components/increment_button.dart';
import 'counter/counter_bloc.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building BlocPage');

    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(create: (BuildContext context) => CounterBloc()),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Bloc')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              DecrementButton(),
              CounterText(),
              IncrementButton(),
            ],
          ),
        ),
      ),
    );
  }
}
