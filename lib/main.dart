import 'package:aitra_project/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aitra',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
