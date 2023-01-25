import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Switch Colors'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Color color = const Color.fromRGBO(110, 255, 61, 1.0);
  Random colorRandom = Random();

  void colorGenerated() {
    setState(() {
      int r = colorRandom.nextInt(255);
      int g = colorRandom.nextInt(255);
      int b = colorRandom.nextInt(255);
      Color newColor = Color.fromRGBO(r, g, b, 1.0);
      color = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: colorGenerated,
      child: Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'If you want change colors, you must push this:',
              ),


            ],

          ),

        ),

      ),
    );
  }

}
