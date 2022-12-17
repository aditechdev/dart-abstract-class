import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

// Extension to log
extension Log on Object {
  void log() => devtools.log(toString());
}

abstract class CanRun {
  void run();
}

// Dart has ability to inherit from maximum things
// with can extends multiple things
// Extends can work with only one
// Inherit the Can Run abstract class
class Cat extends CanRun {
  @override // meta tags
  void run() {
    // TODO: implement run
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(),
    );
  }
}
