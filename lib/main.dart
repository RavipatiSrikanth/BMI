import 'package:flutter/material.dart';
import 'package:hello_world/screens/first_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: Scaffold(
        body: FirstPage(),
      ),
    );
  }
}
