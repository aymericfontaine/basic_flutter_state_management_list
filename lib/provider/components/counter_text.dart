import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../counter.dart';

class CounterText extends StatelessWidget {
  const CounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: ((context, counter, child) {
        print('building CounterText');

        return Text('${counter.value}');
      }),
    );
  }
}
