import 'package:flutter/material.dart';

import 'animated_builder/animated_builder_page.dart';
import 'bloc/bloc_page.dart';
import 'provider/provider_page.dart';
import 'set_state/set_state_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'State Management',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: openSetState,
              child: const Text('setState'),
            ),
            TextButton(
              onPressed: openAnimatedBuilder,
              child: const Text('AnimatedBuilder'),
            ),
            TextButton(
              onPressed: openProvider,
              child: const Text('Provider'),
            ),
            TextButton(
              onPressed: openBloc,
              child: const Text('Bloc'),
            ),
            TextButton(
              onPressed: openRiverpod,
              child: const Text('RiverPod'),
            ),
            TextButton(
              onPressed: openGetIt,
              child: const Text('GetIt'),
            ),
          ],
        ),
      ),
    );
  }

  void openSetState() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const SetStatePage()));
  }

  void openAnimatedBuilder() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const AnimatedBuilderPage()));
  }

  void openProvider() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProviderPage()));
  }

  void openBloc() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const BlocPage()));
  }

  void openRiverpod() {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => const RiverpodPage()));
  }

  void openGetIt() {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => const GetItPage()));
  }
}
