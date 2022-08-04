import 'package:flutter/material.dart';

class DecrementButton extends StatelessWidget {
  const DecrementButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    print('building DecrementButton');

    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.remove),
    );
  }
}
