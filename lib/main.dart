import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

// Extension to log
extension Log on Object {
  void log() => devtools.log(toString());
}

enum Type { cat, dog }

abstract class CanRun {
  final Type type;

  CanRun({required this.type});
  // String get type;
  // {
  //   if (this is Cat) {
  //     return "cat";
  //   } else {
  //     return "Something else";
  //   }
  // }

  @mustCallSuper
  void run() {
    "Can Run function is called".log();
  }
}

// Dart has ability to inherit from maximum things
// with can extends multiple things
// Extends can work with only one
// Inherit the Can Run abstract class
class Cat extends CanRun {
  Cat() : super(type: Type.cat);

  @override // meta tags
  void run() {
    // TO CALL THE ABSTRACT CLASS FUCTION
    super.run();

    "Cat running ..".log();
  }
}

class Dog extends CanRun {
  Dog() : super(type: Type.dog);
}

void testIt() {
  "testIt".log();
  final cat = Cat();
  cat.run();
  cat.type.log();
  final dog = Dog();
  dog.run();
  dog.type.log();
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
    testIt();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Container(),
    );
  }
}
