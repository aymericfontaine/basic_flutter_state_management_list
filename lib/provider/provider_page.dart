import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/counter_text.dart';
import 'components/decrement_button.dart';
import 'components/increment_button.dart';
import 'counter.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('building ProviderPage');

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Provider')),
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
