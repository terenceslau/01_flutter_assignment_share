import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback chooseRed;
  final VoidCallback chooseBlue;
  final VoidCallback resetPill;

  const TextControl({
    Key? key,
    required this.chooseRed,
    required this.chooseBlue,
    required this.resetPill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ElevatedButton(
          onPressed: chooseRed,
          child: null,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red[900]),
          ),
        ),
        ElevatedButton(
          onPressed: chooseBlue,
          child: null,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue[900]),
          ),
        ),
        ElevatedButton(
          onPressed: resetPill,
          child: const Text('Reset'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey[200]),
            foregroundColor: MaterialStateProperty.all(Colors.black),
          ),
        )
      ],
    ));
  }
}
