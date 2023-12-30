import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My First App",
      darkTheme: ThemeData.dark(),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Roller App'),
      ),
      body: const GradientContainer(
        colors: [
          Colors.deepPurple,
          Colors.orange,
          Colors.amber,
          Colors.lightGreen,
        ],
      ),
    );
  }
}
