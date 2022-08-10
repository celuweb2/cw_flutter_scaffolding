import 'package:flutter/material.dart';
import 'package:flutter_scaffolding/ui/pages/sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Celuweb Flutter Scaffolding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SamplePage(),
    );
  }
}
