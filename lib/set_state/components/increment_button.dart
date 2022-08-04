import 'package:flutter/material.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    print('building IncrementButton');

    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.add),
    );
  }
}
