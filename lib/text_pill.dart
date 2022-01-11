import 'package:flutter/material.dart';

class TextPill extends StatelessWidget {
  final String pill;

  const TextPill({
    Key? key,
    required this.pill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        pill,
        style: const TextStyle(
          fontSize: 32,
        ),
      ),
    );
  }
}
