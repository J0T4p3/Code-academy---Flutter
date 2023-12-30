import 'package:flutter/material.dart';

class ScreenText extends StatefulWidget {
  const ScreenText(this.randomWord, {super.key});
  final String randomWord;

  @override
  State<ScreenText> createState() => _ScreenTextState();
}

class _ScreenTextState extends State<ScreenText> {
  @override
  build(BuildContext context) {
    return Text(
      'Hello ${widget.randomWord}!',
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
